param($SubscriptionName, $PlanName)

vso start -s $SubscriptionName -p $PlanName --service

Wait-Debugger
