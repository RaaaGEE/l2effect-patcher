class 4325 extends SkillVisualEffect;

defaultproperties
{
	Begin Object Class=SkillAction_LocateEffect Name=SkillAction_LocateEffect13
		AttachOn=AM_LA
		offset=(X=0.000000,Y=0.000000,Z=-1.000000)
		bSpawnOnTarget=True
		EffectClass=Class'LineageEffect.su_focus_ta'
		bOnMultiTarget=True
	End Object
	Desc="초보용 뱀피릭 레이지" //Beginner Vampiric Rage
	CastingActions=(Action=SkillAction_LocateEffect'SkillAction_LocateEffect13',SpecificStage=0)
}