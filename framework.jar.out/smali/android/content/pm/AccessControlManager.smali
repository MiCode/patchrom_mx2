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

.field public static final TYPE_ACCESS_OPEN:I = 0x3

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
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroid/content/pm/AccessControlManager;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    .line 80
    return-void
.end method


# virtual methods
.method public addAccessControlPass(Ljava/lang/String;)V
    .locals 3
    .parameter "paramString"

    .prologue
    .line 164
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v1, :cond_0

    .line 165
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    return-void

    .line 169
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IAccessControlManager;->addAccessControlPass(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public addControlPackage(Ljava/lang/String;I)V
    .locals 3
    .parameter "pName"
    .parameter "type"

    .prologue
    .line 209
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v1, :cond_0

    .line 210
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_0
    return-void

    .line 214
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IAccessControlManager;->addControlPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public addTopAppAccessControlPass()V
    .locals 3

    .prologue
    .line 333
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v1, :cond_0

    .line 334
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_0
    return-void

    .line 338
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v1}, Landroid/content/pm/IAccessControlManager;->addTopAppAccessControlPass()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkAccessControl(Ljava/lang/String;)Z
    .locals 4
    .parameter "mPackageName"

    .prologue
    const/4 v1, 0x0

    .line 348
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v2, :cond_0

    .line 349
    const-string v2, "AccessControlManager"

    const-string v3, "AccessControlService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_0
    return v1

    .line 353
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IAccessControlManager;->checkAccessControl(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkAccessControlPass(Ljava/lang/String;)Z
    .locals 4
    .parameter "paramString"

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v2, :cond_0

    .line 149
    const-string v2, "AccessControlManager"

    const-string v3, "AccessControlService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return v1

    .line 153
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IAccessControlManager;->checkAccessControlPass(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkControlPackageType(Ljava/lang/String;)I
    .locals 4
    .parameter "pName"

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v2, :cond_0

    .line 240
    const-string v2, "AccessControlManager"

    const-string v3, "AccessControlService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_0
    return v1

    .line 244
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IAccessControlManager;->checkControlPackageType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public clearAccessControlPass()V
    .locals 3

    .prologue
    .line 194
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v1, :cond_0

    .line 195
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_0
    return-void

    .line 199
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v1}, Landroid/content/pm/IAccessControlManager;->clearAccessControlPass()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
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

    .line 271
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v2, :cond_0

    .line 272
    const-string v2, "AccessControlManager"

    const-string v3, "AccessControlService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_0
    return-object v1

    .line 276
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v2}, Landroid/content/pm/IAccessControlManager;->getControlGuardPackages()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getControlOpenPackages()Ljava/util/List;
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

    .line 287
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v2, :cond_0

    .line 288
    const-string v2, "AccessControlManager"

    const-string v3, "AccessControlService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_0
    return-object v1

    .line 292
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v2}, Landroid/content/pm/IAccessControlManager;->getControlOpenPackages()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
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

    .line 255
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v2, :cond_0

    .line 256
    const-string v2, "AccessControlManager"

    const-string v3, "AccessControlService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    return-object v1

    .line 260
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v2}, Landroid/content/pm/IAccessControlManager;->getControlPasswordPackages()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isAccessControlGuardEnable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v2, :cond_0

    .line 133
    const-string v2, "AccessControlManager"

    const-string v3, "AccessControlService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    return v1

    .line 137
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v2}, Landroid/content/pm/IAccessControlManager;->isAccessControlGuardEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isAccessControlPasswordEnable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v2, :cond_0

    .line 117
    const-string v2, "AccessControlManager"

    const-string v3, "AccessControlService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    return v1

    .line 121
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v2}, Landroid/content/pm/IAccessControlManager;->isAccessControlPasswordEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeAccessControlPass(Ljava/lang/String;)V
    .locals 3
    .parameter "paramString"

    .prologue
    .line 179
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v1, :cond_0

    .line 180
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_0
    return-void

    .line 184
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IAccessControlManager;->removeAccessControlPass(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeControlPackage(Ljava/lang/String;I)V
    .locals 3
    .parameter "pName"
    .parameter "type"

    .prologue
    .line 224
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v1, :cond_0

    .line 225
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    return-void

    .line 229
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IAccessControlManager;->removeControlPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
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
    .line 318
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v1, :cond_0

    .line 319
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :goto_0
    return-void

    .line 323
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IAccessControlManager;->screenTurnedOff(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
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
    .line 303
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v1, :cond_0

    .line 304
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :goto_0
    return-void

    .line 308
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v1}, Landroid/content/pm/IAccessControlManager;->screenTurnedOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAccessControlGuardEnable(Z)V
    .locals 3
    .parameter "paramBoolean"

    .prologue
    .line 101
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v1, :cond_0

    .line 102
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void

    .line 106
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IAccessControlManager;->setAccessControlGuardEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAccessControlPasswordEnable(Z)V
    .locals 3
    .parameter "paramBoolean"

    .prologue
    .line 86
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    if-nez v1, :cond_0

    .line 87
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AccessControlManager;->mService:Landroid/content/pm/IAccessControlManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IAccessControlManager;->setAccessControlPasswordEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
