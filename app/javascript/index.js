function price(){
  const itemPrice = document.getElementById("item-price");
  
  itemPrice.addEventListener("keyup", () => {
    const countTax = Math.round(itemPrice.value * 0.1);
    const addTaxPrice = document.getElementById("add-tax-price");
    addTaxPrice.innerHTML = `${countTax}`
    
    const countProfit = Math.round(itemPrice.value * 0.9);
    const Profit = document.getElementById("profit");
    Profit.innerHTML = `${countProfit}`
  });

};

window.addEventListener('load', price);