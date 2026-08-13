-- ══════════════════════════════════════════════════════════════
-- Animations — clean and snappy, not overdone
-- ══════════════════════════════════════════════════════════════

hl.config({
	animations={enabled=true},
})

--Bezier curves
hl.curve("easeOut", {type="bezier",points={{0.16,1}, {0.3,1} }})
hl.curve("easeIn", {type="bezier",points={{0.7,0}, {0.84,0} }})
hl.curve("easeInOut", {type="bezier",points={{0.87,0}, {0.13,1} }})
hl.curve("snappy", {type="bezier",points={{0.25,0.46},{0.45,0.94} }})

--Animation rules
hl.animation({leaf="windows",enabled=true,speed=3,bezier="easeOut", style="slide"})
hl.animation({leaf="windowsOut",enabled=true,speed=2,bezier="easeIn", style="slide"})
hl.animation({leaf="border",enabled=true,speed=5,bezier="easeInOut"})
hl.animation({leaf="borderangle",enabled=true,speed=8,bezier="easeInOut"})
hl.animation({leaf="fade",enabled=true,speed=4,bezier="easeInOut"})
hl.animation({leaf="workspaces",enabled=true,speed=4,bezier="snappy", style="slide"})
hl.animation({leaf="layers",enabled=true,speed=3,bezier="easeOut", style="fade"})
