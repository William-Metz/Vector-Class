#tag Class
Protected Class Vector
	#tag Method, Flags = &h0
		Sub Constructor(x as Double, y as Double, z as Double)
		  me.X =x
		  me.Y = y
		  me.Z = z
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Magnitude() As Double
		  return Sqrt(Pow(Me.X, 2.0) + Pow(Me.Y,2.0) + Pow(Me.Z, 2.0))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Negate() As Vector
		  var v as Vector = new Vector(-me.X, -me.Y, -me.Z)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Add(v1 as Vector) As Vector
		  var v as Vector = new Vector(me.X + v1.X, me.Y + v1.Y, me.Z + v1.Z)
		  return v 
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UnitVector() As Vector
		  var m as double = me.Magnitude
		  var v as Vector = new Vector(me.X/m, me.Y/m, me.Z/m)
		  Return v
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		X As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Y As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Z As Double
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="X"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
