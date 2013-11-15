package com.itech.membership

import org.springframework.dao.DataIntegrityViolationException

class StandardUserController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [standardUserInstanceList: StandardUser.list(params), standardUserInstanceTotal: StandardUser.count()]
    }

    def create() {
        [standardUserInstance: new StandardUser(params)]
    }

    def save() {
        def standardUserInstance = new StandardUser(params)
        if (!standardUserInstance.save(flush: true)) {
            render(view: "create", model: [standardUserInstance: standardUserInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'standardUser.label', default: 'StandardUser'), standardUserInstance.id])
        redirect(action: "show", id: standardUserInstance.id)
    }

    def show(Long id) {
        def standardUserInstance = StandardUser.get(id)
        if (!standardUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'standardUser.label', default: 'StandardUser'), id])
            redirect(action: "list")
            return
        }

        [standardUserInstance: standardUserInstance]
    }

    def edit(Long id) {
        def standardUserInstance = StandardUser.get(id)
        if (!standardUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'standardUser.label', default: 'StandardUser'), id])
            redirect(action: "list")
            return
        }

        [standardUserInstance: standardUserInstance]
    }

    def update(Long id, Long version) {
        def standardUserInstance = StandardUser.get(id)
        if (!standardUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'standardUser.label', default: 'StandardUser'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (standardUserInstance.version > version) {
                standardUserInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'standardUser.label', default: 'StandardUser')] as Object[],
                          "Another user has updated this StandardUser while you were editing")
                render(view: "edit", model: [standardUserInstance: standardUserInstance])
                return
            }
        }

        standardUserInstance.properties = params

        if (!standardUserInstance.save(flush: true)) {
            render(view: "edit", model: [standardUserInstance: standardUserInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'standardUser.label', default: 'StandardUser'), standardUserInstance.id])
        redirect(action: "show", id: standardUserInstance.id)
    }

    def delete(Long id) {
        def standardUserInstance = StandardUser.get(id)
        if (!standardUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'standardUser.label', default: 'StandardUser'), id])
            redirect(action: "list")
            return
        }

        try {
            standardUserInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'standardUser.label', default: 'StandardUser'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'standardUser.label', default: 'StandardUser'), id])
            redirect(action: "show", id: id)
        }
    }
}
