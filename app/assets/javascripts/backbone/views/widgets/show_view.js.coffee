CsFunnies.Views.Widgets ||= {}

class CsFunnies.Views.Widgets.ShowView extends Backbone.View
  template: JST["backbone/templates/widgets/show"]
   
  render: ->
    $(this.el).html(@template(@model.toJSON() ))
    return this