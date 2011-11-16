CsFunnies.Views.Widgets ||= {}

class CsFunnies.Views.Widgets.WidgetView extends Backbone.View
  template: JST["backbone/templates/widgets/widget"]
  
  events:
    "click .destroy" : "destroy"
      
  tagName: "tr"
  
  destroy: () ->
    @model.destroy()
    this.remove()
    
    return false
    
  render: ->
    $(this.el).html(@template(@model.toJSON() ))    
    return this