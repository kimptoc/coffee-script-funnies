class CsFunnies.Models.Widget extends Backbone.Model
  paramRoot: 'widget'

  defaults:
    name: null
  
class CsFunnies.Collections.WidgetsCollection extends Backbone.Collection
  model: CsFunnies.Models.Widget
  url: '/widgets'