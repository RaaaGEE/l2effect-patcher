class 1178 extends SkillVisualEffect;

defaultproperties
{
	Begin Object Class=SkillAction_LocateEffect Name=SkillAction_LocateEffect0
		AttachOn=AM_LA
		offset=(X=0.000000,Y=0.000000,Z=-1.000000)
		bSizeScale=True
		EffectClass=Class'LineageEffect.el_twister_ca'
	End Object
	Begin Object Class=SkillAction_LocateEffect Name=SkillAction_LocateEffect1
		AttachOn=AM_LA
		offset=(X=1.000000,Y=0.000000,Z=0.000000)
		bSizeScale=True
		EffectClass=Class'LineageEffect.el_twister_pr'
	End Object
	Begin Object Class=SkillAction_LocateEffect Name=SkillAction_LocateEffect3
		offset=(X=1.000000,Y=0.000000,Z=0.000000)
		EffectClass=Class'LineageEffect.el_twister_fl'
	End Object
	Begin Object Class=SkillAction_LocateEffect Name=SkillAction_LocateEffect2
		AttachOn=AM_LA
		offset=(X=-1.000000,Y=0.000000,Z=0.000000)
		bSpawnOnTarget=True
		EffectClass=Class'LineageEffect.el_twister_ta'
	End Object
	Desc="트위스터" //Twister
	CastingActions(0)=(Action=SkillAction_LocateEffect'SkillAction_LocateEffect0',SpecificStage=0)
	CastingActions(1)=(Action=SkillAction_LocateEffect'SkillAction_LocateEffect1',SpecificStage=0)
	ShotActions=(Action=SkillAction_LocateEffect'SkillAction_LocateEffect3',SpecificStage=0)
	ExplosionActions=(Action=SkillAction_LocateEffect'SkillAction_LocateEffect2',SpecificStage=0)
	FlyingTime=0.400000
}