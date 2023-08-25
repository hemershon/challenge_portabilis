import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'bulma/css/bulma.css'
import * as ActiveStorage from "@rails/activestorage"
import * as bootstrap from "bootstrap"
ActiveStorage.start()

Rails.start()
Turbolinks.start()
ActiveStorage.start()

require("trix")
require("@rails/actiontext")