import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="price"
export default class extends Controller {
  static targets = ["start", "end", "total", "sum"]
  static values = {price:String}
calculate() {
let startDate = this.startTarget.value
let endDate = this.endTarget.value

startDate = Date.parse(startDate)
endDate = Date.parse(endDate)

startDate = new Date(startDate)
endDate = new Date(endDate)

let days = endDate - startDate
days =  days / (1000 * 60 * 60 * 24)

const bookPrice = +this.totalTarget.dataset.price
const totalPrice = bookPrice* days

this.totalTarget.innerText = totalPrice
this.sumTarget.value = totalPrice
  }
}
