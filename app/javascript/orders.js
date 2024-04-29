function addQuantity(id) {
  let quantity = document.getElementById(`quantity-${id}`);

  let itemsAvailable = document.getElementById(`items-available-${id}`);

  if (parseInt(quantity.innerHTML) + 1 > parseInt(itemsAvailable.innerHTML)) {
    return;
  }

  quantity.innerHTML = parseInt(quantity.innerHTML) + 1;

  if (quantity.innerHTML > 0) {
    document.getElementById(`add-to-cart-${id}`).disabled = false;
  }
}

function removeQuantity(id) {
  let quantity = document.getElementById(`quantity-${id}`);

  if (quantity.innerHTML < 1) {
    return;
  }

  quantity.innerHTML = parseInt(quantity.innerHTML) - 1;

  if (quantity.innerHTML < 1) {
    document.getElementById(`add-to-cart-${id}`).disabled = true;
  }
}

function isCartDisabled(id) {
  let quantity = document.getElementById(`quantity-${id}`);

  if (parseInt(quantity.innerHTML) < 1) {
    document.getElementById(`add-to-cart-${id}`).disabled = true;
  } else {
    document.getElementById(`add-to-cart-${id}`).disabled = false;
  }
}

function addToCart(id) {
  let quantity = document.getElementById(`quantity-${id}`);
  let quantityValue = parseInt(quantity.innerHTML);

  if (quantityValue < 1) {
    return;
  }

  let url = `/add-to-cart?id=${id}&quantity=${quantityValue}`;

  fetch(url, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      "X-CSRF-Token": document.querySelector("meta[name='csrf-token']").content,
    },
  }).then((response) => {
    if (response.status === 200) {
      window.location.href = "/checkout";
      location.href = "#add-to-cart-" + id;
    }
  });
}

function onChangeStatus(orderId, currentStatusId) {
  let saveButton = document.getElementById(`save-button-${orderId}`);

  let status = document.getElementById(`order-status-${orderId}`);

  if (status.value === currentStatusId) {
    saveButton.disabled = true;
  } else {
    saveButton.disabled = false;
  }
}

function onSaveButtonClick(orderId, order_number) {
  let status = document.getElementById(`order-status-${orderId}`);

  let url = `/orders/${order_number}/update-status/${status.value}`;

  fetch(url, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      "X-CSRF-Token": document.querySelector("meta[name='csrf-token']").content,
    },
  }).then((response) => {
    if (response.status === 200 || response.status === 204) {
      window.location.href = "/orders";
    }
  });
}
