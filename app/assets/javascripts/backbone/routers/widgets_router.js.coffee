class CsFunnies.Routers.WidgetsRouter extends Backbone.Router
  initialize: (options) ->
    @widgets = new CsFunnies.Collections.WidgetsCollection()
    @widgets.reset options.widgets

  routes:
    "/new"      : "newWidget"
    "/index"    : "index"
    "/:id/edit" : "edit"
    "/:id"      : "show"
    ".*"        : "index"

  newWidget: ->
    @view = new CsFunnies.Views.Widgets.NewView(collection: @widgets)
    $("#widgets").html(@view.render().el)

  index: ->
    @view = new CsFunnies.Views.Widgets.IndexView(widgets: @widgets)
    $("#widgets").html(@view.render().el)

  show: (id) ->
    widget = @widgets.get(id)
    
    @view = new CsFunnies.Views.Widgets.ShowView(model: widget)
    $("#widgets").html(@view.render().el)
    
  edit: (id) ->
    widget = @widgets.get(id)

    @view = new CsFunnies.Views.Widgets.EditView(model: widget)
    $("#widgets").html(@view.render().el)
  