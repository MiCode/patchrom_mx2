.class public Landroid/content/pm/AccessControlManager;
.super Ljava/lang/Object;
.source "AccessControlManager.java"


# static fields
.field public static final ACCESS_CONTROL_CHANGE_INTENT:Ljava/lang/String; = "android.intent.action.ACCESS_CONTROL_CHANGED"

.field public static final ACCESS_CONTROL_EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.mPackageName"

.field public static final ACCESS_CONTROL_EXTRA_PACKAGE_NAME_LABEL:Ljava/lang/String; = "android.intent.extra.mPackageName.label"

.field public static final ACCESS_CONTROL_EXTRA_REQUEST_CODE:Ljava/lang/String; = "android.intent.extra.request_code"

.field public static final ACCESS_CONTROL_EXTRA_START_INTENT:Ljava/lang/String; = "android.intent.extra.start_intent"

.field public static final ACCESS_CONTROL_INTENT:Ljava/lang/String; = "android.content.pm.CONFIRM_ACCESS_APPCATONS"

.field static final TAG:Ljava/lang/String; = "AccessControlManager"

.field public static final TYPE_ACCESS_GUARD:I = 0x2

.field public static final TYPE_ACCESS_NON:I = 0x0

.field public static final TYPE_ACCESS_PASSWORD:I = 0x1


# instance fields
.field final mContext:Landroid/content/Context;

.field private mService:Landroid/content/pm/IAccessControlManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IAccessControlManager;)V
    .locals 0
    .parameter "context"
    .parameter "service"

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Landroid/content/pm/AccessControlManager;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    .line 77
    return-void
.end method


# virtual methods
.method public addAccessControlPass(Ljava/lang/String;)V
    .locals 3
    .parameter "paramString"

    .prologue
    .line 176
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v1, :cond_0

    .line 177
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    return-void

    .line 181
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IAccessControlManager;->addAccessControlPass(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public addControlPackage(Ljava/lang/String;I)V
    .locals 3
    .parameter "pName"
    .parameter "type"

    .prologue
    .line 221
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v1, :cond_0

    .line 222
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_0
    return-void

    .line 226
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IAccessControlManager;->addControlPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public addTopAppAccessControlPass()V
    .locals 3

    .prologue
    .line 329
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v1, :cond_0

    .line 330
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :goto_0
    return-void

    .line 334
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v1}, Landroid/content/pm/IAccessControlManager;->addTopAppAccessControlPass()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkAccessControl(Ljava/lang/String;)Z
    .locals 4
    .parameter "mPackageName"

    .prologue
    const/4 v1, 0x0

    .line 344
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v2, :cond_0

    .line 345
    const-string v2, "AccessControlManager"

    const-string v3, "AccessControlService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :goto_0
    return v1

    .line 349
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IAccessControlManager;->checkAccessControl(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkAccessControlPass(Ljava/lang/String;)Z
    .locals 4
    .parameter "paramString"

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v2, :cond_0

    .line 161
    const-string v2, "AccessControlManager"

    const-string v3, "AccessControlService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    return v1

    .line 165
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IAccessControlManager;->checkAccessControlPass(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkControlPackageType(Ljava/lang/String;)I
    .locals 4
    .parameter "pName"

    .prologue
    const/4 v1, 0x0

    .line 251
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v2, :cond_0

    .line 252
    const-string v2, "AccessControlManager"

    const-string v3, "AccessControlService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    return v1

    .line 256
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IAccessControlManager;->checkControlPackageType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public clearAccessControlPass()V
    .locals 3

    .prologue
    .line 206
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v1, :cond_0

    .line 207
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_0
    return-void

    .line 211
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v1}, Landroid/content/pm/IAccessControlManager;->clearAccessControlPass()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getControlGuardPackages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v2, :cond_0

    .line 284
    const-string v2, "AccessControlManager"

    const-string v3, "AccessControlService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_0
    return-object v1

    .line 288
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v2}, Landroid/content/pm/IAccessControlManager;->getControlGuardPackages()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getControlPasswordPackages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 267
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v2, :cond_0

    .line 268
    const-string v2, "AccessControlManager"

    const-string v3, "AccessControlService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :goto_0
    return-object v1

    .line 272
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v2}, Landroid/content/pm/IAccessControlManager;->getControlPasswordPackages()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isAccessControlGuardEnable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v2, :cond_0

    .line 145
    const-string v2, "AccessControlManager"

    const-string v3, "AccessControlService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return v1

    .line 149
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v2}, Landroid/content/pm/IAccessControlManager;->isAccessControlGuardEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isAccessControlPasswordEnable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v2, :cond_0

    .line 129
    const-string v2, "AccessControlManager"

    const-string v3, "AccessControlService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    return v1

    .line 133
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v2}, Landroid/content/pm/IAccessControlManager;->isAccessControlPasswordEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeAccessControlPass(Ljava/lang/String;)V
    .locals 3
    .parameter "paramString"

    .prologue
    .line 191
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v1, :cond_0

    .line 192
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    return-void

    .line 196
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IAccessControlManager;->removeAccessControlPass(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeControlPackage(Ljava/lang/String;I)V
    .locals 3
    .parameter "pName"
    .parameter "type"

    .prologue
    .line 236
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v1, :cond_0

    .line 237
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_0
    return-void

    .line 241
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IAccessControlManager;->removeControlPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public screenTurnedOff(I)V
    .locals 3
    .parameter "why"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v1, :cond_0

    .line 315
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_0
    return-void

    .line 319
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IAccessControlManager;->screenTurnedOff(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public screenTurnedOn()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v1, :cond_0

    .line 300
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_0
    return-void

    .line 304
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v1}, Landroid/content/pm/IAccessControlManager;->screenTurnedOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAccessControl(Ljava/lang/String;I)V
    .locals 3
    .parameter "mPkg"
    .parameter "type"

    .prologue
    .line 83
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v1, :cond_0

    .line 84
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_0
    return-void

    .line 88
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IAccessControlManager;->setAccessControl(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAccessControlGuardEnable(Z)V
    .locals 3
    .parameter "paramBoolean"

    .prologue
    .line 113
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v1, :cond_0

    .line 114
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return-void

    .line 118
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IAccessControlManager;->setAccessControlGuardEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAccessControlPasswordEnable(Z)V
    .locals 3
    .parameter "paramBoolean"

    .prologue
    .line 98
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v1, :cond_0

    .line 99
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return-void

    .line 103
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IAccessControlManager;->setAccessControlPasswordEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
