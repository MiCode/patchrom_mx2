.class public Lcom/android/server/am/ReceiverPermission;
.super Ljava/lang/Object;
.source "ReceiverPermission.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReceiverPermission"


# instance fields
.field private DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mPhoneLimitedPerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ReceiverPermission;->DEBUG:Z

    .line 52
    iput-object p1, p0, Lcom/android/server/am/ReceiverPermission;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 53
    return-void
.end method


# virtual methods
.method public checkContentPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .parameter "pkgName"
    .parameter "pkgLabel"

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 185
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/ReceiverPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, p1, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 186
    .local v2, isOpen:I
    iget-boolean v6, p0, Lcom/android/server/am/ReceiverPermission;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 187
    const-string v6, "ReceiverPermission"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isOpen: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pkgName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    if-ne v2, v9, :cond_2

    .line 190
    iget-boolean v6, p0, Lcom/android/server/am/ReceiverPermission;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 191
    const-string v6, "ReceiverPermission"

    const-string v7, "return PERMISSION_GRANTED"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v2           #isOpen:I
    :cond_1
    :goto_0
    return v4

    .line 194
    .restart local v2       #isOpen:I
    :cond_2
    if-nez v2, :cond_3

    move v4, v5

    .line 195
    goto :goto_0

    .line 197
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/am/ReceiverPermission;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 198
    const-string v6, "ReceiverPermission"

    const-string v7, "sendBroadcast:  ACTION_CHECK_APP_INTENT"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_4
    iget-object v6, p0, Lcom/android/server/am/ReceiverPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, p1, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 202
    .local v3, res:I
    const/4 v1, 0x0

    .line 204
    .local v1, i:I
    iget-object v6, p0, Lcom/android/server/am/ReceiverPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, -0x1

    invoke-static {v6, p1, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 205
    if-ne v3, v5, :cond_5

    .line 206
    iget-object v6, p0, Lcom/android/server/am/ReceiverPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, p1, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_5
    if-eq v3, v9, :cond_1

    .line 210
    if-nez v3, :cond_6

    move v4, v5

    .line 211
    goto :goto_0

    :cond_6
    move v4, v5

    .line 213
    goto :goto_0

    .line 216
    .end local v1           #i:I
    .end local v2           #isOpen:I
    .end local v3           #res:I
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ReceiverPermission"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkContentPermission:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 218
    goto :goto_0
.end method

.method public checkLimitedPermission(Ljava/lang/String;III)I
    .locals 10
    .parameter "permission"
    .parameter "pid"
    .parameter "uid"
    .parameter "value"

    .prologue
    .line 100
    move v6, p4

    .line 101
    .local v6, result:I
    iget-object v7, p0, Lcom/android/server/am/ReceiverPermission;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v7, p0, Lcom/android/server/am/ReceiverPermission;->mContext:Landroid/content/Context;

    .line 102
    iget-object v7, p0, Lcom/android/server/am/ReceiverPermission;->mContext:Landroid/content/Context;

    if-nez v7, :cond_1

    .line 103
    const-string v7, "ReceiverPermission"

    const-string v8, "mContext is null: "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v6           #result:I
    :cond_0
    :goto_0
    return v6

    .line 107
    .restart local v6       #result:I
    :cond_1
    :try_start_0
    sget-object v7, Landroid/os/Build;->MeizuSecurity:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/server/am/ReceiverPermission;->getPhoneLimitedPermission()Ljava/util/ArrayList;

    move-result-object v2

    .line 110
    .local v2, mLimitedPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 111
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, p3, p2, v8}, Landroid/content/pm/IPackageManager;->getInstalledPackagesExtralPm(III)Ljava/util/List;

    move-result-object v3

    .line 112
    .local v3, pList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-boolean v7, p0, Lcom/android/server/am/ReceiverPermission;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 113
    const-string v7, "ReceiverPermission"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "permission: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v7, "ReceiverPermission"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pList: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_2
    const-string v5, ""

    .line 118
    .local v5, pkgName:Ljava/lang/String;
    const-string v4, ""

    .line 119
    .local v4, pkgLabel:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_7

    .line 120
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    iget-object v5, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 121
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/server/am/ReceiverPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 122
    .local v1, lable:Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    .line 123
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    :cond_3
    iget-boolean v7, p0, Lcom/android/server/am/ReceiverPermission;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 126
    const-string v7, "ReceiverPermission"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u3000system pkgNameString: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v7, "ReceiverPermission"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  system pkgLabel: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_4
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5

    .line 132
    iget-boolean v7, p0, Lcom/android/server/am/ReceiverPermission;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 133
    const-string v7, "ReceiverPermission"

    const-string v8, "FLAG_SYSTEM return PERMISSION_GRANTED"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 166
    .end local v1           #lable:Ljava/lang/CharSequence;
    .end local v2           #mLimitedPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #pList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v4           #pkgLabel:Ljava/lang/String;
    .end local v5           #pkgName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "ReceiverPermission"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkLimitedPermission: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 139
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #lable:Ljava/lang/CharSequence;
    .restart local v2       #mLimitedPermission:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #pList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v4       #pkgLabel:Ljava/lang/String;
    .restart local v5       #pkgName:Ljava/lang/String;
    :cond_5
    :try_start_1
    iget-boolean v7, p0, Lcom/android/server/am/ReceiverPermission;->DEBUG:Z

    if-eqz v7, :cond_6

    .line 140
    const-string v7, "ReceiverPermission"

    const-string v8, "third app return PERMISSION_LIMITED"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_6
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 146
    .end local v1           #lable:Ljava/lang/CharSequence;
    :cond_7
    iget-boolean v7, p0, Lcom/android/server/am/ReceiverPermission;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 147
    const-string v7, "ReceiverPermission"

    const-string v8, "\u3000pList is null "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getPhoneLimitedPermission()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/am/ReceiverPermission;->mPhoneLimitedPerList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ReceiverPermission;->mPhoneLimitedPerList:Ljava/util/ArrayList;

    .line 71
    iget-object v0, p0, Lcom/android/server/am/ReceiverPermission;->mPhoneLimitedPerList:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECEIVE_MMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/android/server/am/ReceiverPermission;->mPhoneLimitedPerList:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/android/server/am/ReceiverPermission;->mPhoneLimitedPerList:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ReceiverPermission;->mPhoneLimitedPerList:Ljava/util/ArrayList;

    return-object v0
.end method
