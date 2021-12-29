const pay = () => {
  Payjp.setPublicKey(process.env.PAYJP_PUBLIC_KEY);
  const submit = document.getElementById("button");
  submit.addEventListener("click", (e) => {
    e.preventDefault();

    const formResult = document.getElementById("charge-form");
    const formData = new FormData(formResult);

    const card = {
      number: formData.get("purchase_ship[number]"),
      cvc: formData.get("purchase_ship[cvc]"),
      exp_month: formData.get("purchase_ship[exp_month]"),
      exp_year: `20${formData.get("purchase_ship[exp_year]")}`,
    };
      // console.log("フォーム送信時にイベント発火")

      Payjp.createToken(card, (status, response) => {
        if (status == 200) {
          const token = response.id;
          // console.log(token)
          const renderDom = document.getElementById("charge-form");
          const tokenObj = `<input value=${token} name='token' type="hidden"> `;
          renderDom.insertAdjacentHTML("beforeend", tokenObj);
          debugger;
        }
      });
  
        
  });
};

window.addEventListener("load", pay);
