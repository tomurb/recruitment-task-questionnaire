import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
	static targets = ['favouriteColor']

	drawColor() {
		this.favouriteColorTarget.value = ['red', 'green', 'blue'][Math.floor(Math.random() * 3)]
	}
}
