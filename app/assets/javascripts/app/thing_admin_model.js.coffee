class App.Models.ThingAdmin extends Backbone.Model
  urlRoot: "/things/a"
  idAttribute: "admin_url"

  initialize: ()->
    @errors = []

  validate: (attrs) ->
    @errors = []
    console.log "I got validated"
    console.log attrs.date

    unless moment(attrs.time).isValid()
      @errors.push I18n.t("errors.invalid-datetime")

    unless moment(attrs.time).isAfter(moment())
      @errors.push I18n.t("errors.past")

    unless attrs.admin_name
      @errors.push I18n.t("errors.required", field: I18n.t("labels.name"))

    unless attrs.admin_email
      @errors.push I18n.t("errors.required", field: I18n.t("labels.email"))

    unless attrs.title
      @errors.push I18n.t("errors.required", field: I18n.t("labels.title"))

    unless attrs.min_contribution
      @errors.push I18n.t("errors.required", field: I18n.t("labels.min-contribution"))

    unless attrs.datetime
      @errors.push I18n.t("errors.required", field: I18n.t("labels.date"))
      @errors.push I18n.t("errors.required", field: I18n.t("labels.time"))

