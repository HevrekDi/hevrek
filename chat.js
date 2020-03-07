class Messanger {
    constructor(){ 
    }
    
    Div = document.getElementById('app').createElement('form').appendChild('input');
    
    
    // newForm = document.createElement('form');
    // newInput = document.createElement('input');
    
}
const Messanger = new Messanger();





class Helpers {
    static apiUrl = '/hevrek/';
    static headers = () => ({
        'Content-Type': 'application/json',
        'Application-Type': 'application/json'
    });
}




class Chat {
    from = ''; // свойство | поле
    to = '';
    token = '';
    lastUpdate = new Date();

    constructor(){
    }

    login (login, password){ // действие | метод
        const self = this;
        fetch(
            Helpers.apiUrl + 'login.php',
            {
                method: 'post',
                headers: Helpers.headers(),
                body: JSON.stringify({
                    login: login,
                    password: password
                })
            }
        ).then(function(res){return res.json()})
         .then(function(res){
             self.token = res.token;
             self.from = login;
        }).catch(function(err) {
        });
    }

    changeDialog(to) {
        this.to = to;
        return fetch(
            Helpers.apiUrl + 'messages.php?from='+this.from+'&to='+this.to,
            {
                method: 'get',
                headers: Helpers.headers()
            }
        ).then(function(res){return res.json()})
         .catch(function(err){console.log(err)});
    }

    sendMessage(text) {
        fetch(
            Helpers.apiUrl + 'message.php',
            {
                method: 'post',
                headers: Helpers.headers(),
                body: JSON.stringify({
                    from: this.from,
                    to: this.to,
                    message: text
                })
            }
        ).catch(function(err){console.log(err)});
    }

    getNewMessages = () => new Promise((resolve, reject) => {
        fetch(
            Helpers.apiUrl + 'now_messages.php?from='+this.from+'&to='+this.to+'&datetime='+this.lastUpdate.getTime(),
            {
                method: 'get',
                headers: Helpers.headers()
            }
        ).then(res => res.json()).then((res) => {
            if(res.messages.length > 0){
                this.lastUpdate = new Date();
            }
            return resolve(res.messages);
        }).catch(err => reject(err));
    });
}
const chat = new Chat();

document.getElementById('login').addEventListener('click', function(event) {
    event.preventDefault();
    chat.login(
        document.getElementsByName('login')[0].value, 
        document.getElementsByName('password')[0].value
    );
});

[...document.getElementsByClassName('user')].map(function(item) {
    item.addEventListener('click', function(){
        [...document.getElementsByClassName('user')].map(function(el) {
            el.classList.remove('active');
        });
        this.classList.add('active');
        chat.changeDialog(this.innerText).then(function(res){
            document.getElementById('messages').innerHTML = '';
            for(const item of res.messages){
                const el = document.createElement('div');
                el.classList.toggle(item.myself ? 'from' : 'to');
                el.innerText = item.text;
                document.getElementById('messages').appendChild(el);
            }
        });
    });
});

document.getElementById('submit_message').addEventListener('click', function(event){
    const text = document.getElementById('message').value;
    const message = document.createElement('div');
    message.innerText = text;
    message.classList.add('from');
    document.getElementById('messages').appendChild(message);
    document.getElementById('message').value = '';
    chat.sendMessage(text);
});

const id = setInterval(
    function(){
        if(!!chat.from && !!chat.to){
            chat.getNewMessages().then(function(messages){
                for(const item of messages){
                    const el = document.createElement('div');
                    el.classList.add(item.myself ? 'from' : 'to')
                    el.innerText = item.text;
                    document.getElementById('messages').appendChild(el);
                }
            }).catch(function(err){console.log(err)});
        }
    },
    3000
);

class PrivateChat extends Chat {

    constructor(){
        super();
    }

    login = (login, password) => {
        // password = some_cript(password);
        // super.login(login, password);
        console.log('private');
    };
}



// const privateChat = new PrivateChat();
// privateChat.login(); // privateChat::login()
// privateChat.getNewMessages(); // Chat::getNewMessages()

// const newChat = new NewChat();
// newChat.login();

const ar = [new PrivateChat(), new NewChat()];

for(const el of ar){
    console.log(el);
    el.login('', '');
}

var oldClass = function(){
    var prop1 ='';
};

// oldClass.__propto__.add = function(){};


