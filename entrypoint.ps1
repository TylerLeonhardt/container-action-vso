param($SubscriptionName, $PlanName)

chown -R newuser /github/home/
su - newuser
vso start -s $SubscriptionName -p $PlanName

Wait-Debugger
