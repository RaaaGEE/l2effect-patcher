class 1035 extends SkillVisualEffect;

defaultproperties
{
	Begin Object Class=SkillAction_LocateEffect Name=SkillAction_LocateEffect18
		AttachOn=AM_LA
		offset=(X=0.000000,Y=0.000000,Z=-1.000000)
		EffectClass=Class'LineageEffect.wh_heal_ca'
	End Object
	Begin Object Class=SkillAction_LocateEffect Name=SkillAction_LocateEffect19
		AttachOn=AM_LA
		bSpawnOnTarget=True
		EffectClass=Class'LineageEffect.wh_mental_shield_ta'
		bOnMultiTarget=True
	End Object
	Desc="멘탈 실드" //Mental Shield
	CastingActions=(Action=SkillAction_LocateEffect'SkillAction_LocateEffect18',SpecificStage=0)
	ShotActions=(Action=SkillAction_LocateEffect'SkillAction_LocateEffect19',SpecificStage=0)
}