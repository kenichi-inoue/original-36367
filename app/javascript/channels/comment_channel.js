import consumer from "./consumer"

consumer.subscriptions.create("CommentChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    const html = `
    <div class="comment">
      <p class="user-info">${data.user.nickname}： </p>
      <p>${data.comment.text}</p>
    </div>`
  const comments = document.getElementById("comments")
  comments.insertAdjacentHTML('beforeend', html)
  const commentForm = document.getElementById("comment-form") 
  commentForm.reset();
  }
});
