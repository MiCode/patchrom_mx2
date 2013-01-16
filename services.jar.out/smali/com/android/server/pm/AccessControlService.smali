.class public Lcom/android/server/pm/AccessControlService;
.super Landroid/content/pm/IAccessControlManager$Stub;
.source "AccessControlService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "AccessControlManager"


# instance fields
.field private final DEBUG:Z

.field private mAccessControlGuardEnable:Z

.field private mAccessControlPassPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessControlPasswordEnable:Z

.field final mContext:Landroid/content/Context;

.field private mControlGuardPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mControlPasswordPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private volatile mPolicy:Landroid/app/KeyguardManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/content/pm/IAccessControlManager$Stub;-><init>()V

    .line 37
    iput-boolean v1, p0, Lcom/android/server/pm/AccessControlService;->DEBUG:Z

    .line 41
    iput-boolean v1, p0, Lcom/android/server/pm/AccessControlService;->mAccessControlPasswordEnable:Z

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    .line 49
    iput-boolean v1, p0, Lcom/android/server/pm/AccessControlService;->mAccessControlGuardEnable:Z

    .line 62
    iput-object p1, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/AccessControlService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 64
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/AccessControlService;->mAccessControlPasswordEnable:Z

    .line 65
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/pm/AccessControlService;->mPolicy:Landroid/app/KeyguardManager;

    .line 66
    return-void
.end method

.method private getTopActivitComponentName()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 429
    const/4 v2, 0x0

    .line 430
    .local v2, ret:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 431
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 433
    .local v1, info:Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v1, :cond_0

    .line 434
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 437
    :cond_0
    return-object v2
.end method

.method private loadControlPackages()V
    .locals 8

    .prologue
    .line 75
    iget-object v6, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getControlPackages(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v3

    .line 77
    .local v3, pkg:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v3, :cond_1

    .line 104
    :cond_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 85
    .local v4, set:Ljava/util/Set;
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 86
    .local v1, it:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 88
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 89
    .local v2, name:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 90
    .local v5, type:Ljava/lang/Integer;
    const-string v6, "access_control_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 95
    iget-object v6, p0, Lcom/android/server/pm/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 96
    iget-object v6, p0, Lcom/android/server/pm/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 99
    iget-object v6, p0, Lcom/android/server/pm/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 100
    iget-object v6, p0, Lcom/android/server/pm/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private sendAccessControlBroadcast(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACCESS_CONTROL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 203
    const-string v1, "android.intent.extra.mPackageName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 206
    return-void
.end method

.method private showAccessControl(Landroid/content/pm/PackageInfo;)V
    .locals 11
    .parameter "pkg"

    .prologue
    .line 443
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 444
    .local v5, time:J
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 445
    .local v3, pkgName:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/server/pm/AccessControlService;->checkAccessControl(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 446
    iget-object v7, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 448
    .local v4, tempCharSequence:Ljava/lang/CharSequence;
    if-eqz v4, :cond_1

    move-object v1, v4

    .line 449
    .local v1, label:Ljava/lang/CharSequence;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.content.pm.CONFIRM_ACCESS_APPCATONS"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 450
    .local v2, mAccessApp:Landroid/content/Intent;
    const-string v7, "android.intent.extra.mPackageName"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    const-string v7, "android.intent.extra.mPackageName.label"

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 454
    const/high16 v7, 0x1000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 455
    const v7, 0x8000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 456
    iget-object v7, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 458
    .end local v1           #label:Ljava/lang/CharSequence;
    .end local v2           #mAccessApp:Landroid/content/Intent;
    .end local v4           #tempCharSequence:Ljava/lang/CharSequence;
    :cond_0
    const-string v7, "AccessControlManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkAccessControl "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    .end local v3           #pkgName:Ljava/lang/String;
    .end local v5           #time:J
    :goto_1
    return-void

    .restart local v3       #pkgName:Ljava/lang/String;
    .restart local v4       #tempCharSequence:Ljava/lang/CharSequence;
    .restart local v5       #time:J
    :cond_1
    move-object v1, v3

    .line 448
    goto :goto_0

    .line 459
    .end local v3           #pkgName:Ljava/lang/String;
    .end local v4           #tempCharSequence:Ljava/lang/CharSequence;
    .end local v5           #time:J
    :catch_0
    move-exception v0

    .line 460
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "AccessControlManager"

    const-string v8, "accseeApp error !"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public addAccessControlPass(Ljava/lang/String;)V
    .locals 3
    .parameter "paramString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/android/server/pm/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    monitor-enter v1

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 219
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-direct {p0, p1}, Lcom/android/server/pm/AccessControlService;->sendAccessControlBroadcast(Ljava/lang/String;)V

    .line 221
    return-void

    .line 219
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addControlPackage(Ljava/lang/String;I)V
    .locals 5
    .parameter "pName"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 276
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    if-ne p2, v3, :cond_2

    .line 280
    iget-object v1, p0, Lcom/android/server/pm/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    monitor-enter v1

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "access_control_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 287
    :cond_0
    monitor-exit v1

    .line 298
    :cond_1
    :goto_0
    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 288
    :cond_2
    if-ne p2, v4, :cond_1

    .line 289
    iget-object v1, p0, Lcom/android/server/pm/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    monitor-enter v1

    .line 290
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 291
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "access_control_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 296
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public addTopAppAccessControlPass()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 391
    iget-object v1, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v2, p0, Lcom/android/server/pm/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    monitor-enter v2

    .line 395
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/AccessControlService;->getTopActivitComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 396
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 399
    iget-object v1, p0, Lcom/android/server/pm/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_0
    monitor-exit v2

    .line 402
    return-void

    .line 401
    .end local v0           #component:Landroid/content/ComponentName;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkAccessControl(Ljava/lang/String;)Z
    .locals 6
    .parameter "mPackageName"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 475
    iget-object v4, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    const-string v5, "access_control"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/AccessControlManager;

    .line 477
    .local v0, acm:Landroid/content/pm/AccessControlManager;
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/pm/AccessControlManager;->checkAccessControlPass(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 499
    :cond_0
    :goto_0
    return v2

    .line 481
    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/pm/AccessControlManager;->checkControlPackageType(Ljava/lang/String;)I

    move-result v1

    .line 483
    .local v1, mControlType:I
    if-eqz v1, :cond_0

    .line 485
    if-ne v1, v3, :cond_3

    .line 486
    invoke-virtual {v0}, Landroid/content/pm/AccessControlManager;->isAccessControlPasswordEnable()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/AccessControlManager;->isAccessControlGuardEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    move v2, v3

    .line 488
    goto :goto_0

    .line 492
    :cond_3
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 493
    invoke-virtual {v0}, Landroid/content/pm/AccessControlManager;->isAccessControlGuardEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 494
    goto :goto_0
.end method

.method public checkAccessControlPass(Ljava/lang/String;)Z
    .locals 3
    .parameter "paramString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 259
    iget-object v2, p0, Lcom/android/server/pm/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    monitor-enter v2

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 265
    .local v0, bool:Z
    monitor-exit v2

    return v0

    .line 266
    .end local v0           #bool:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkControlPackageType(Ljava/lang/String;)I
    .locals 2
    .parameter "pName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, type:I
    iget-object v1, p0, Lcom/android/server/pm/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    const/4 v0, 0x2

    .line 348
    :goto_0
    return v0

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    const/4 v0, 0x1

    goto :goto_0

    .line 343
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearAccessControlPass()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 245
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/android/server/pm/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 250
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-direct {p0, v2}, Lcom/android/server/pm/AccessControlService;->sendAccessControlBroadcast(Ljava/lang/String;)V

    .line 252
    return-void

    .line 250
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getControlGuardPackages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/android/server/pm/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    monitor-enter v1

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getControlPasswordPackages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/android/server/pm/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    monitor-enter v1

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAccessControlGuardEnable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/server/pm/AccessControlService;->mAccessControlGuardEnable:Z

    return v0
.end method

.method public isAccessControlPasswordEnable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAccessControlPass(Ljava/lang/String;)V
    .locals 3
    .parameter "paramString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/android/server/pm/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    monitor-enter v1

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 235
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-direct {p0, p1}, Lcom/android/server/pm/AccessControlService;->sendAccessControlBroadcast(Ljava/lang/String;)V

    .line 237
    return-void

    .line 235
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeControlPackage(Ljava/lang/String;I)V
    .locals 5
    .parameter "pName"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 307
    iget-object v1, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 311
    iget-object v2, p0, Lcom/android/server/pm/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    monitor-enter v2

    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 313
    .local v0, index:I
    if-eq v0, v4, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/server/pm/AccessControlService;->mControlPasswordPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 315
    iget-object v1, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "access_control_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->delete(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 317
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AccessControlService;->removeAccessControlPass(Ljava/lang/String;)V

    .line 319
    :cond_0
    monitor-exit v2

    .line 331
    .end local v0           #index:I
    :cond_1
    :goto_0
    return-void

    .line 319
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 320
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 321
    iget-object v2, p0, Lcom/android/server/pm/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    monitor-enter v2

    .line 322
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 323
    .restart local v0       #index:I
    if-eq v0, v4, :cond_3

    .line 324
    iget-object v1, p0, Lcom/android/server/pm/AccessControlService;->mControlGuardPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 325
    iget-object v1, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "access_control_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->delete(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AccessControlService;->removeAccessControlPass(Ljava/lang/String;)V

    .line 329
    :cond_3
    monitor-exit v2

    goto :goto_0

    .end local v0           #index:I
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public screenTurnedOff(I)V
    .locals 1
    .parameter "why"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/server/pm/AccessControlService;->clearAccessControlPass()V

    .line 384
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/AccessControlService;->setAccessControlGuardEnable(Z)V

    .line 385
    return-void
.end method

.method public screenTurnedOn()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 408
    invoke-direct {p0}, Lcom/android/server/pm/AccessControlService;->getTopActivitComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 409
    .local v1, component:Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    .line 410
    iget-object v5, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 412
    .local v3, pManager:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 413
    .local v0, aInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 414
    .local v4, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-boolean v5, v0, Landroid/content/pm/ActivityInfo;->needAccessControl:Z

    if-eqz v5, :cond_1

    .line 415
    iget-object v5, p0, Lcom/android/server/pm/AccessControlService;->mPolicy:Landroid/app/KeyguardManager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/AccessControlService;->mPolicy:Landroid/app/KeyguardManager;

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedAndNotHide()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "meuzu_keyguard_lock"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v8, :cond_1

    .line 419
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/pm/AccessControlService;->showAccessControl(Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .end local v0           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #pManager:Landroid/content/pm/PackageManager;
    .end local v4           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    return-void

    .line 422
    .restart local v3       #pManager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 423
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAccessControl(Ljava/lang/String;I)V
    .locals 5
    .parameter "mPkg"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 115
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    if-ne p2, v3, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "access_control_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/AccessControlService;->sendAccessControlBroadcast(Ljava/lang/String;)V

    .line 134
    return-void

    .line 123
    :cond_0
    if-ne p2, v4, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "access_control_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "access_control_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->delete(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setAccessControlGuardEnable(Z)V
    .locals 3
    .parameter "paramBoolean"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 163
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-boolean v0, p0, Lcom/android/server/pm/AccessControlService;->mAccessControlGuardEnable:Z

    if-eq v0, p1, :cond_0

    .line 167
    iput-boolean p1, p0, Lcom/android/server/pm/AccessControlService;->mAccessControlGuardEnable:Z

    .line 169
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/pm/AccessControlService;->sendAccessControlBroadcast(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public setAccessControlPasswordEnable(Z)V
    .locals 3
    .parameter "paramBoolean"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/android/server/pm/AccessControlService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MEIZU_CONTROL_PACKAGE_PERMISSIONS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-boolean v0, p0, Lcom/android/server/pm/AccessControlService;->mAccessControlPasswordEnable:Z

    if-eq v0, p1, :cond_0

    .line 149
    iput-boolean p1, p0, Lcom/android/server/pm/AccessControlService;->mAccessControlPasswordEnable:Z

    .line 151
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/pm/AccessControlService;->sendAccessControlBroadcast(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/pm/AccessControlService;->loadControlPackages()V

    .line 72
    return-void
.end method
