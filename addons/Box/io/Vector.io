Point := Vector clone setSize(2) 
Color := Vector clone setSize(4)

Box copy := method(box,
    self origin copy(box origin)
    self size copy(box size)
)

//Sequence asVector := method(Vector clone copy(self))

Vector derivative := method(
    last := self at(0)
    for(i, 1, self size - 1,
        v := self at(i)
        self atPut(i - 1, v - last)
        last = v
    )
    self
)

Vector average := method(p,
    last := self at(0)
    for(i, 1, self size - 1,
        v := self at(i)
        self atPut(i - 1, (v + last) / 2)
        last = v
    )
    self
)

List asVector := method(
        v := Vector clone setSize(0)
        self foreach(d, v append(d))
        v
)

Box do(
	asString := method(self serialized asString)
	
	serialized := method(b, 
		if(b == nil, b := Sequence clone)
		b appendSeq("Box clone do(")
		b appendSeq("setOrigin(")
		//origin serialized(b)
		b appendSeq("); ")
		b appendSeq("setSize(")
		//size serialized(b)
		b appendSeq("));")
	)

	print := method(self serialized print)
)

Vector