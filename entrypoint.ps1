param($SubscriptionName, $PlanName)

vso start -s $SubscriptionName -p $PlanName

Wait-Debugger
