# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap

pin 'application', preload: true
pin '@hotwired/turbo-rails', to: 'turbo.min.js', preload: true
pin '@hotwired/stimulus', to: 'stimulus.min.js', preload: true
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js', preload: true
pin_all_from 'app/javascript/controllers', under: 'controllers'

# stimulus-notification
pin "stimulus-notification", to: "https://ga.jspm.io/npm:stimulus-notification@2.2.0/dist/stimulus-notification.mjs"
pin "hotkeys-js", to: "https://ga.jspm.io/npm:hotkeys-js@3.13.3/dist/hotkeys.esm.js"
pin "stimulus-use", to: "https://ga.jspm.io/npm:stimulus-use@0.51.3/dist/index.js"
