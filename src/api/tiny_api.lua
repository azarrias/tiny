return {
  -- tiny library API
  -- v0.0.1
  tiny = {
    type = "lib",
    description = "The tiny library provides very simple game engine features.",
    childs = {
	  Animation = {
	    type = "function",
		description = "Create and return an instance of Animation.",
		args = "( name: string )",
		returns = "( Animation )",
		valuetype = "Animation", -- indicates that tiny.Animation returns value of type 'Animation'
	  },
      AnimatorCondition = {
        type = "function",
        description = "Create and return an instance of AnimatorCondition.",
        args = "( parameterName: string, operator: AnimatorConditionOperatorType, value: boolean )",
        returns = "( AnimatorCondition )",
        valuetype = "AnimatorCondition", 
      },
	  AnimatorConditionOperatorType = {
	    type = "function",
		description = "Enum type AnimatorConditionOperatorType.",
		valuetype = "AnimatorConditionOperatorType",
	  },
      AnimatorController = {
        type = "function",
        description = [[Create and return an instance of AnimatorController.]],
        args = "( name: string )",
        returns = "( AnimatorController )",
        valuetype = "AnimatorController", 
      },
	  AnimatorControllerParameter = {
	    type = "function",
		description = [[Create and return an instance of AnimatorControllerParameter.
If the parameter is of type Trigger, 'value' is set to false.
Otherwise, this boolean 'value' must be given as a parameter.]],
		args = "( name: string, _type: AnimatorControllerParameterType [, value: boolean )",
		returns = "( AnimatorControllerParameter )",
		valuetype = "AnimatorControllerParameter",
	  },
	  AnimatorControllerParameterType = {
	    type = "function",
		description = "Enum type AnimatorControllerParameterType.",
		valuetype = "AnimatorControllerParameterType",
	  },
	  AnimationFrame = {
	    type = "function",
		description = [[Create and return an instance of AnimationFrame.
If 'quad' is not provided, the whole 'texture' is used instead.]],
		args = "( texture: Image [, quad: Quad = texture, duration: decimal = 1] )",
		returns = "( AnimationFrame )",
		valuetype = "AnimationFrame",
	  },
	  AnimatorState = {
	    type = "function",
		description = "Create and return an instance of AnimatorState.",
		args = "( name: string )",
		returns = "( AnimatorState )",
		valuetype = "AnimatorState",
	  },
	  AnimatorStateMachine = {
	    type = "function",
		description = "Create and return an instance of AnimatorStateMachine.",
		args = "()",
		returns = "( AnimatorStateMachine )",
		valuetype = "AnimatorStateMachine",
	  },
	  AnimatorStateTransition = {
	    type = "function",
		description = "Create and return an instance of AnimatorStateTransition.",
		args = "( state: AnimatorState )",
		returns = "( AnimatorStateTransition )",
		valuetype = "AnimatorStateTransition",
	  },
	  Collider = {
	    type = "function",
		description = "Create and return an instance of Collider.",
		args = "( center: Vector2D, size: Vector2D )",
		returns = "( Collider )",
		valuetype = "Collider",
	  },
	  Component = {
	    type = "function",
		description = "Create and return an instance of Component.",
		args = "()",
		returns = "( Component )",
		valuetype = "Component",
	  },
	  Entity = {
	    type = "function",
		description = "Create and return an instance of Entity.",
		args = "( posX: decimal, posY: decimal [, rotation: decimal = 0, scaleX: decimal = 1, scaleY: decimal = 1] )",
		returns = "( Entity )",
		valuetype = "Entity",
	  },
	  Scene = {
	    type = "function",
		description = "Create and return an instance of Scene.",
		args = "()",
		returns = "( Scene )",
		valuetype = "Scene",
	  },
	  SceneManager = {
	    type = "function",
		description = "Create and return an instance of SceneManager.",
		args = "( states: table of Scene )",
		returns = "( SceneManager )",
		valuetype = "SceneManager",
	  },
      Script = {
	    type = "function",
		description = "Create and return an instance of Script.",
		args = "( name: string )",
		returns = "( Script )",
		valuetype = "Script",
	  },
      Sprite = {
	    type = "function",
		description = [[Create and return an instance of Sprite.
If 'quad' is not provided, the whole 'texture' is used instead.]],
		args = "( texture: Image [, quad: Quad = texture] )",
		returns = "( Sprite )",
		valuetype = "Sprite",
	  },
	  StateMachineBehaviour = {
	    type = "function",
		description = "Create and return an instance of StateMachineBehaviour.",
		args = "()",
		returns = "( StateMachineBehaviour )",
		valuetype = "StateMachineBehaviour",
	  },
	  Vector2D = {
	    type = "function",
		description = "Create and return an instance of Vector2D.",
		args = "( x: decimal, y: decimal )",
		returns = "( Vector2D )",
		valuetype = "Vector2D",
	  },
    },
  },
  
  Animation = {
    type = "class",
	description = "Pseudo-class for Animation.",
	childs = {
	  name = {
	    type = "value",
		description = "string",
	  },
	  frames = {
	    type = "value",
		description = "table of Frame",
	  },
	  timer = {
	    type = "value",
		description = "decimal",
	  },
	  frameTimer = {
	    type = "value",
		description = "decimal",
	  },
	  currentFrame = {
	    type = "value",
		description = "integer",
	  },
	  duration = {
	    type = "value",
		description = "decimal",
	  },
	  isChangingFrames = {
	    type = "value",
		description = "boolean",
	  },
	  update = {
	    type = "method",
		description = "Update the animation.",
		args = "( dt: decimal )",
		returns = "()",
	  },
	  AddFrame = {
	    type = "method",
	    description = "Adds a newly created AnimationFrame to the Animation.",
		args = "( texture: Image [, quad: Quad, duration: decimal] )",
		returns = "()",
	  },
	  Reset = {
	    type = "method",
		description = "Resets the Animation frame counter and timers.",
		args = "()",
		returns = "()",
	  },
	},
  },
  
  AnimatorCondition = {
    type = "class",
	description = "Pseudo-class for AnimatorCondition.",
	childs = {
	  parameterName = {
        type = "value",
	    description = "string",
	  },
	  operator = {
	    type = "value",
		description = "AnimatorConditionOperatorType",
		valuetype = "AnimatorConditionOperatorType",
	  },
	  value = {
	    type = "value",
		description = "boolean",
	  },
	},
  },	
  
  AnimatorConditionOperatorType = {
    type = "class",
	description = "Pseudo-enum for AnimatorConditionOperatorType.",
	childs = {
	  GreaterThan = {
	    type = "value",
		description = "AnimatorConditionOperatorType.GreaterThan value",
	  },
	  LessThan = {
	    type = "value",
		description = "AnimatorConditionOperatorType.LessThan value",
	  },
	  Equals = {
	    type = "value",
		description = "AnimatorConditionOperatorType.Equals value",
	  },
	  NotEqual = {
	    type = "value",
		description = "AnimatorConditionOperatorType.NotEqual value",
	  },
	},
  },

  AnimatorController = {
    type = "class",
	inherits = "Component",
    description = "Pseudo-class for AnimatorController.",
    childs = {
	  componentType = {
	    type = "value",
		description = "string",
	  },
	  name = {
	    type = "value",
		description = "string",
	  },
	  stateMachine = {
	    type = "value",
		description = "AnimatorStateMachine",
		valuetype = "AnimatorStateMachine",
	  },
	  parameters = {
	    type = "value",
		description = "table of AnimatorControllerParameter",
	  },
	  animations = {
	    type = "value",
		description = "table of Animation",
	  },
	  changingState = {
	    type = "value",
		description = "boolean",
	  },
	  update = {
	    type = "method",
		description = "Update the AnimatorController.",
		args = "( dt: decimal )",
		returns = "()",
	  },
      AddAnimation = {
        type = "method",
        description = "Create and return a new state with a new animation in it.",
        args = "( name: string )",
        returns = "( AnimatorState )",
		valuetype = "AnimatorState",
      },
	  AddParameter = {
	    type = "method",
		description = "Add an AnimatorControllerParameter to the AnimatorController.",
		args = "( name: string, _type: AnimatorControllerParameterType )",
		returns = "()",
	  },
	  AreAllConditionsMet = {
	    type = "method",
		description = "Check if all the conditions are met for a given transition.",
		args = "( transition: AnimatorStateTransition )",
		returns = "( boolean )",
	  },
	  ChangeState = {
	    type = "method",
		description = [[Change to the destination state of a given transition.
This automatically resets the state Animation and triggers
that may have been consumed by this transition.
It also executes all exit behaviours for the source state
and all enter behaviour for the target state.]],
		args = "( transition: AnimatorStateTransition )",
		returns = "()",
	  },
	  ResetTransitionTriggers = {
	    type = "method",
		description = [[Reset trigger parameters that may be consumed by a given
		                transition conditions.]],
		args = "( transition: AnimatorStateTransition )",
		returns = "()",
	  },
	  SetValue = {
	    type = "method",
		description = [[Set the value of a given AnimatorControllerParameter.
(Parameters of type 'Trigger' cannot be given a value).]],
		args = "( parameterName: string, value: boolean )",
		returns = "()",
	  },
	  SetTrigger = {
	    type = "method",
		description = [[Set a trigger given its name.
(Only for AnimatorControllerParameter of type Trigger).]],
		args = "( triggerName: string )",
		returns = "()",
	  },
	  ResetTrigger = {
	    type = "method",
		description = [[Reset a trigger given its name.
(Only for AnimatorControllerParameter of type Trigger).]],
		args = "( triggerName: string )",
		returns = "()",
	  },
    },
  },
  
  AnimatorControllerParameter = {
    type = "class",
	description = "Pseudo-class for AnimatorControllerParameter.",
	childs = {
	  name = {
	    type = "value",
		description = "string",
	  },
	  type = {
	    type = "value",
		description = "AnimatorControllerParameterType",
		valuetype = "AnimatorControllerParameterType",
	  },
	  value = {
	    type = "value",
		description = "boolean",
	  },
	},
  },
  
  AnimatorControllerParameterType = {
    type = "class",
	description = "Pseudo-enum for AnimatorControllerParameterType.",
	childs = {
	  Bool = {
	    type = "value",
		description = "AnimatorControllerParameterType.Bool value",
	  },
	  Numeric = {
	    type = "value",
		description = "AnimatorControllerParameterType.Numeric value",
	  },
	  Trigger = {
	    type = "value",
		description = "AnimatorControllerParameterType.Trigger value",
	  },
	},
  },
   
  AnimationFrame = {
    type = "class",
	description = "Pseudo-class for AnimationFrame.",
	childs = {
	  texture = {
	    type = "value",
		description = "Image",
	  },
	  quad = {
	    type = "value",
		description = "Quad",
	  },
	  duration = {
	    type = "value",
		description = "decimal",
	  },
	},
  },
  
  AnimatorState = {
    type = "class",
	description = "Pseudo-class for AnimatorState.",
	childs = {
	  name = {
	    type = "value",
		description = "string",
	  },
	  transitions = {
	    type = "value",
		description = "table of AnimatorStateTransition",
	  },
	  animation = {
	    type = "value",
		description = "Animation",
		valuetype = "Animation",
	  },
	  behaviours = {
	    type = "value",
		description = "table of StateMachineBehaviour",
	  },
	  update = {
	    type = "method",
	    description = "Update the AnimatorState.",
		args = "( dt: decimal )",
		returns = "()",
	  },	  
	  AddStateMachineBehaviour = {
	    type = "method",
	    description = "Adds a StateMachineBehaviour to the AnimatorState.",
		args = "( behaviourName: StateMachineBehaviour )",
		returns = "( StateMachineBehaviour )",
		valuetype = "StateMachineBehaviour",
	  },
	  AddTransition = {
	    type = "method",
		description = "Adds an AnimatorStateTransition from this AnimatorState to another.",
		args = "( state: AnimatorState )",
		returns = "( AnimatorStateTransition )",
		valuetype = "AnimatorStateTransition",
	  },
	},
  },
  
  AnimatorStateMachine = {
    type = "class",
	description = "Pseudo-class for AnimatorStateMachine.",
	childs = {
	  defaultState = {
	    type = "value",
		description = "AnimatorState",
		valuetype = "AnimatorState",
	  },
	  currentState = {
	    type = "value",
		description = "AnimatorState",
		valuetype = "AnimatorState",
	  },
	  states = {
	    type = "value",
		description = "table of AnimatorState",
	  },
	  anyStateTransitions = {
	    type = "value",
		description = "table of AnimatorStateTransition",
	  },
	  entryTransition = {
	    type = "value",
		description = "AnimatorStateTransition",
		valuetype = "AnimatorStateTransition",
	  },
	  update = {
	    type = "method",
	    description = "Updates the AnimatorStateMachine.",
		args = "( dt: decimal )",
		returns = "()",
	  },
	  AddState = {
	    type = "method",
	    description = "Adds an AnimatorState to the AnimatorStateMachine.",
		args = "( name: string )",
		returns = "( AnimatorState )",
		valuetype = "AnimatorState",
	  },
	  AddAnyStateTransition = {
	    type = "method",
		description = "Adds an AnimatorStateTransition from AnyState to another AnimatorState.",
		args = "( state: AnimatorState )",
		returns = "( AnimatorStateTransition )",
		valuetype = "AnimatorStateTransition",
	  },
	  AddEntryTransition = {
	    type = "method",
		description = "Sets the EntryTransition to a given AnimatorState.",
		args = "( state: AnimatorState )",
		returns = "( AnimatorStateTransition )",
		valuetype = "AnimatorStateTransition",
	  },
	},
  },
  
  AnimatorStateTransition = {
    type = "class",
	description = "Pseudo-class for AnimatorStateTransition.",
	childs = {
	  destinationState = {
	    type = "value",
		description = "AnimatorState",
		valuetype = "AnimatorState",
	  },
	  conditions = {
	    type = "value",
		description = "table of AnimatorCondition",
	  },
	  exitTime = {
	    type = "value",
		description = "decimal",
	  },
	  AddCondition = {
	    type = "method",
	    description = "Adds an AnimatorCondition to the AnimatorStateTransition.",
		args = "( parameter: string, operator: AnimatorConditionOperatorType, value: boolean )",
		returns = "()",
	  },
	},
  },
  
  Collider = {
    type = "class",
	inherits = "Component",
    description = "Pseudo-class for Collider.",
    childs = {
	  componentType = {
	    type = "value",
		description = "string",
	  },
	  center = {
	    type = "value",
		description = "Vector2D",
		valuetype = "Vector2D",
	  },
	  size = {
	    type = "value",
		description = "Vector2D",
		valuetype = "Vector2D",
	  },
      render = {
        type = "method",
        description = "Render the Collider.",
        args = "()",
        returns = "()",
      },
      Collides = {
        type = "method",
        description = "Checks if the Collider collides with another one.",
        args = "( other: Collider )",
        returns = "( boolean )",
      },
    },
  },
  
  Component = {
    type = "class",
	description = "Pseudo-class for Component.",
	childs = {
	  enabled = {
	    type = "value",
		description = "boolean",
	  },
	  entity = {
	    type = "value",
		description = "Entity",
		valuetype = "Entity",
	  },
	},
  },
  
  Entity = {
    type = "class",
	description = "Pseudo-class for Entity.",
	childs = {
	  parent = {
	    type = "value",
		description = "Entity",
		valuetype = "Entity",
	  },
	  enabled = {
	    type = "value",
		description = "boolean",
	  },
	  position = {
	    type = "value",
		description = "Vector2D",
		valuetype = "Vector2D",
	  },
	  rotation = {
	    type = "value",
		description = "decimal",
	  },
	  scale = {
	    type = "value",
		description = "Vector2D",
		valuetype = "Vector2D",
	  },
	  components = {
	    type = "value",
		description = "table of Component",
	  },
	  update = {
	    type = "method",
	    description = "Update the Entity.",
		args = "( dt: decimal )",
		returns = "()",
	  },
      render = {
        type = "method",
        description = "Render the Entity.",
        args = "()",
        returns = "()",
      },
	  AddComponent = {
	    type = "method",
	    description = "Adds a Component to the Entity.",
		args = "( component: Component )",
		returns = "( Component )",
		valuetype = "Component",
	  },
	  AddScript = {
	    type = "method",
	    description = "Adds a Script to the Entity.",
		args = "( scriptName: string )",
		returns = "( Component )",
		valuetype = "Component",
	  },
	  GetComponentIndex = {
	    type = "method",
		description = [[Gets the index of a given Component within 
the entity's table of Components]],
        args = "( component: Component )",
		returns = "( integer )",
	  },
	  RemoveComponent = {
	    type = "method",
		description = "Removes a Component from the Entity.",
		args = "( component: Component )",
		returns = "()",
	  },
	},
  },
 
  Scene = {
    type = "class",
	description = "Pseudo-class for Scene.",
	childs = {
	  enter = {
	    type = "method",
		description = "Execute when entering the Scene.",
		args = "()",
		returns = "()",
	  },
	  exit = {
	    type = "method",
		description = "Execute when exiting the Scene.",
		args = "()",
		returns = "()",
	  },
	  update = {
	    type = "method",
	    description = "Update the Scene.",
		args = "( dt: decimal )",
		returns = "()",
	  },
      render = {
        type = "method",
        description = "Render the Scene.",
        args = "()",
        returns = "()",
      },
	},
  },

  SceneManager = {
    type = "class",
	description = "Pseudo-class for SceneManager.",
	childs = {
	  scenes = {
	    type = "value",
		description = "table of Scene",
	  },
	  current = {
	    type = "value",
		description = "Scene",
		valuetype = "Scene",
	  },
	  change = {
	    type = "method",
		description = [[Change Scene with a given set of enter parameters.
This internally executes the exit method of the 
current Scene, and then the enter method of the 
target Scene.]],
		args = "( sceneName: string, enterParams: table of enter parameters )",
		returns = "()",
	  },
	  update = {
	    type = "method",
	    description = "Update the current Scene in the SceneManager.",
		args = "( dt: decimal )",
		returns = "()",
	  },
      render = {
        type = "method",
        description = "Render the current Scene in the SceneManager.",
        args = "()",
        returns = "()",
      },
	},
  },

  Script = {
    type = "class",
	inherits = "Component",
	description = "Pseudo-class for Script.",
	childs = {
	  name = {
	    type = "value",
	    description = "string",
	  },
	  componentType = {
	    type = "value",
		description = "string",
	  },
	},
  },
  
  Sprite = {
    type = "class",
	inherits = "Component",
	description = "Pseudo-class for Sprite.",
	childs = {
	  componentType = {
	    type = "value",
	    description = "string",
	  },
	  texture = {
	    type = "value",
		description = "Image",
	  },
	  quad = {
	    type = "value",
		description = "Quad",
	  },
	  flipX = {
	    type = "value",
		description = "boolean",
	  },
	  flipY = {
	    type = "value",
		description = "boolean",
	  },
	  color = {
	    type = "value",
		description = "table of R, G, B, A decimal values [0-1]",
	  },
	  size = {
	    type = "value",
		description = "Vector2D",
		valuetype = "Vector2D",
	  },
	  pivot = {
	    type = "value",
		description = "Vector2D",
		valuetype = "Vector2D",
	  },
      render = {
        type = "method",
        description = "Render the Sprite.",
        args = "()",
        returns = "()",
      },
      SetDrawable = {
        type = "method",
        description = [[Sets the Sprite texture and/or quad.
If 'quad' is not provided, the whole 'texture' is used instead.]],
        args = "( texture: Image [, quad: Quad = texture] )",
        returns = "()",
      },
	},
  },
  
  StateMachineBehaviour = {
    type = "class",
	description = "Pseudo-class for StateMachineBehaviour.",
	childs = {
	  OnStateEnter = {
	    type = "method",
		description = "Execute when entering StateMachineBehaviour.",
		args = "( dt: decimal, animatorController: AnimatorController )",
		returns = "()",
	  },
	  OnStateExit = {
	    type = "method",
		description = "Execute when exiting StateMachineBehaviour.",
		args = "( dt: decimal, animatorController: AnimatorController )",
		returns = "()",
	  },
	  OnStateUpdate = {
	    type = "method",
		description = "Update the StateMachineBehaviour.",
		args = "( dt: decimal, animatorController: AnimatorController )",
		returns = "()",
	  },
	},
  },
  
  Vector2D = {
    type = "class",
	description = "Pseudo-class for Vector2D.",
	childs = {
	  x = {
	    type = "value",
		description = "decimal",
	  },
	  y = {
	    type = "value",
		description = "decimal",
	  },
	  DotProduct = {
	    type = "method",
		description = "Perform dot product with another Vector2D.",
		args = "( other: Vector2D )",
		returns = "( Vector2D )",
		valuetype = "Vector2D",
      },
	  Floor = {
	    type = "method",
		description = "Truncate members of the Vector2D.",
		args = "()",
		returns = "( Vector2D )",
		valuetype = "Vector2D",
	  },
	  Magnitude = {
	    type = "method",
		description = "Calculate magnitude of the Vector2D.",
		args = "()",
		returns = "( decimal )",
	  },
	  Normalize = {
	    type = "method",
		description = "Normalize the Vector2D.",
		args = "()",
		returns = "( Vector2D )",
		valuetype = "Vector2D",
	  },
	  SqrMagnitude = {
	    type = "method",
		description = [[Calculate magnitude squared of the Vector2D.
(This can be used to sort magnitudes faster,
by avoiding the expensive sqrt calculation).]],
        args = "()",
		returns = "( decimal )",
	  },
	},
  },
}
