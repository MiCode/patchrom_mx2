.class Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;
.super Ljava/lang/Thread;
.source "LockPasswordKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoToStartActivity"
.end annotation


# instance fields
.field mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;


# direct methods
.method public constructor <init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter "intent"

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;->mIntent:Landroid/content/Intent;

    .line 1168
    iput-object p2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;->mIntent:Landroid/content/Intent;

    .line 1169
    return-void
.end method

.method public constructor <init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "packageName"
    .parameter "action"

    .prologue
    const/high16 v1, 0x1001

    .line 1156
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;->mIntent:Landroid/content/Intent;

    .line 1158
    if-nez p3, :cond_0

    .line 1159
    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$2400(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;->mIntent:Landroid/content/Intent;

    .line 1160
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1165
    :goto_0
    return-void

    .line 1162
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;->mIntent:Landroid/content/Intent;

    .line 1163
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 1173
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-virtual {v6}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->getTopActivit()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1174
    .local v0, className:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1175
    .local v4, realIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;->mIntent:Landroid/content/Intent;

    if-eqz v6, :cond_0

    .line 1176
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.contacts"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1177
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v6, v6, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v6}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isCalling()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1178
    const-string v0, ""

    .line 1179
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1181
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1182
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1205
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 1207
    :try_start_1
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$2500(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1227
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #setter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mWaitKeyguardDone:Z
    invoke-static {v6, v8}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$2602(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Z)Z

    .line 1229
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1230
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v7, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v7, v7, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1234
    :goto_2
    return-void

    .line 1184
    .restart local v2       #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 1185
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1188
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1189
    .local v3, phoneIntent:Landroid/content/Intent;
    const-string v6, "com.android.contacts"

    const-string v7, "com.android.contacts.ContactsLaunchActivity"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1190
    const/high16 v6, 0x1001

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1191
    const-string v6, "LockView"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1192
    move-object v4, v3

    .line 1193
    goto :goto_0

    .line 1195
    .end local v3           #phoneIntent:Landroid/content/Intent;
    :cond_3
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1196
    .local v5, smsIntent:Landroid/content/Intent;
    const-string v6, "com.android.mms"

    const-string v7, "com.android.mms.ui.ConversationList"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1197
    const/high16 v6, 0x1401

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1200
    const-string v6, "LockView"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1201
    move-object v4, v5

    goto :goto_0

    .line 1208
    .end local v5           #smsIntent:Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 1209
    .local v1, e:Landroid/content/ActivityNotFoundException;
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    new-instance v7, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity$1;

    invoke-direct {v7, p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity$1;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;)V

    invoke-virtual {v6, v7}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1216
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catch_2
    move-exception v1

    .line 1217
    .local v1, e:Ljava/lang/SecurityException;
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    new-instance v7, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity$2;

    invoke-direct {v7, p0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity$2;-><init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;)V

    invoke-virtual {v6, v7}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1232
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_4
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v7, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$GoToStartActivity;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v7, v7, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v7, v8, v9}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method
