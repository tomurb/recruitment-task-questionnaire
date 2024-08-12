import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
	static targets = ['dialog']

	connect() {
		this.dialogTarget.addEventListener('turbo:submit-end', (event) => {
			if (event.detail.success) {
				this.close()
			}
		})
	}

	open() {
		this.dialogTarget.showModal()
	}

	close() {
		this.dialogTarget.close()
	}
}
