import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    let id = messagesContainer.dataset.chatroomId;
    console.log(id)
    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        messagesContainer.insertAdjacentHTML('beforeend', data); // called when data is broadcast in the cable
      },
    });
  }
}


export { initChatroomCable };
