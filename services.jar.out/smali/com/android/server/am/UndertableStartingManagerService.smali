.class public Lcom/android/server/am/UndertableStartingManagerService;
.super Landroid/app/IUndertableStartingManager$Stub;
.source "UndertableStartingManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;
    }
.end annotation


# static fields
.field private static final ALL_LIST_PACKAGE:[Ljava/lang/String; = null

.field private static AUTO_CHECK_PACKAGE:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static AUTO_STARTING_ACTIVITY:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_ADD_NOTIFICATION:I = 0x12c

.field private static final MSG_REMOVE_NOTIFICATION:I = 0x12e

.field private static final MSG_STARTING_LIST_WHEM_LOCKED:I = 0x12f

.field private static final MSG_UPDATE_NOTIFICATION:I = 0x12d

.field private static final Tag:Ljava/lang/String; = "UndertableStarting"


# instance fields
.field private mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private mAutoStartingMode:Z

.field private mAutoStartingWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/internal/statusbar/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field public mNotificationsByTime:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/statusbar/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mPM:Landroid/os/PowerManager;

.field private mResetActivityRecor:Lcom/android/server/am/ActivityRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/UndertableStartingManagerService;->AUTO_STARTING_ACTIVITY:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/UndertableStartingManagerService;->AUTO_CHECK_PACKAGE:Ljava/util/ArrayList;

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/UndertableStartingManagerService;->ALL_LIST_PACKAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 5
    .parameter "context"
    .parameter "activityManager"

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 85
    invoke-direct {p0}, Landroid/app/IUndertableStartingManager$Stub;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/android/server/am/UndertableStartingManagerService;->mResetActivityRecor:Lcom/android/server/am/ActivityRecord;

    .line 46
    iput-boolean v4, p0, Lcom/android/server/am/UndertableStartingManagerService;->mAutoStartingMode:Z

    .line 47
    iput-object v0, p0, Lcom/android/server/am/UndertableStartingManagerService;->mContext:Landroid/content/Context;

    .line 48
    iput-object v0, p0, Lcom/android/server/am/UndertableStartingManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotifications:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotificationsByTime:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Lcom/android/server/am/UndertableStartingManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/UndertableStartingManagerService$1;-><init>(Lcom/android/server/am/UndertableStartingManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/UndertableStartingManagerService;->mHandler:Landroid/os/Handler;

    .line 86
    iput-object p1, p0, Lcom/android/server/am/UndertableStartingManagerService;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/android/server/am/UndertableStartingManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 88
    iput-boolean v4, p0, Lcom/android/server/am/UndertableStartingManagerService;->mAutoStartingMode:Z

    .line 90
    sget-object v0, Lcom/android/server/am/UndertableStartingManagerService;->AUTO_STARTING_ACTIVITY:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.ui.ConversationList"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/android/server/am/UndertableStartingManagerService;->AUTO_STARTING_ACTIVITY:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.contacts"

    const-string v3, "com.android.contacts.activities.DialtactsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/android/server/am/UndertableStartingManagerService;->AUTO_CHECK_PACKAGE:Ljava/util/ArrayList;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/android/server/am/UndertableStartingManagerService;->AUTO_CHECK_PACKAGE:Ljava/util/ArrayList;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/am/UndertableStartingManagerService;->mPM:Landroid/os/PowerManager;

    .line 96
    iget-object v0, p0, Lcom/android/server/am/UndertableStartingManagerService;->mPM:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "lockAutoStarting"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UndertableStartingManagerService;->mAutoStartingWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 97
    iget-object v0, p0, Lcom/android/server/am/UndertableStartingManagerService;->mAutoStartingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 98
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/am/UndertableStartingManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/UndertableStartingManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/UndertableStartingManagerService;Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/am/UndertableStartingManagerService;->handleAddNewNotification(Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/UndertableStartingManagerService;Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/am/UndertableStartingManagerService;->handleUpdateNewNotification(Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/UndertableStartingManagerService;Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/am/UndertableStartingManagerService;->handleRemoveNewNotification(Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/UndertableStartingManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/server/am/UndertableStartingManagerService;->startList()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/UndertableStartingManagerService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/am/UndertableStartingManagerService;->mAutoStartingWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private contain(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarNotification;)Z
    .locals 3
    .parameter "pkg"
    .parameter "ne"

    .prologue
    const/4 v1, 0x0

    .line 284
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v1

    .line 286
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/android/server/am/UndertableStartingManagerService;->ALL_LIST_PACKAGE:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 287
    sget-object v2, Lcom/android/server/am/UndertableStartingManagerService;->ALL_LIST_PACKAGE:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 288
    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    if-eqz v2, :cond_2

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_2

    .line 289
    const/4 v1, 0x1

    goto :goto_0

    .line 286
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private equalWithTop(Landroid/content/Intent;)Z
    .locals 3
    .parameter "targetIntent"

    .prologue
    const/4 v1, 0x0

    .line 445
    if-nez p1, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v1

    .line 448
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UndertableStartingManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getTopHistory()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 449
    .local v0, top:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 452
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private finishActivity(Ljava/lang/String;)Z
    .locals 6
    .parameter "pkg"

    .prologue
    const/4 v4, 0x0

    .line 386
    if-nez p1, :cond_0

    move v3, v4

    .line 396
    :goto_0
    return v3

    .line 388
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v3, Lcom/android/server/am/UndertableStartingManagerService;->AUTO_CHECK_PACKAGE:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 389
    sget-object v3, Lcom/android/server/am/UndertableStartingManagerService;->AUTO_CHECK_PACKAGE:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 390
    sget-object v3, Lcom/android/server/am/UndertableStartingManagerService;->AUTO_STARTING_ACTIVITY:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 391
    .local v0, finishComponentName:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/am/UndertableStartingManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->finishActivity(Landroid/content/ComponentName;)Z

    move-result v2

    .line 392
    .local v2, ret:Z
    const-string v3, "UndertableStarting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] finishActivity: ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", calss = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v3, 0x1

    goto :goto_0

    .line 388
    .end local v0           #finishComponentName:Landroid/content/ComponentName;
    .end local v2           #ret:Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v3, v4

    .line 396
    goto :goto_0
.end method

.method private handleAddNewNotification(Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;)V
    .locals 5
    .parameter "ne"

    .prologue
    .line 167
    iget-object v2, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v2

    .line 168
    :try_start_0
    const-string v1, "UndertableStarting"

    const-string v3, "------------handleAddNewNotification----------"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotifications:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->key:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotifications:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->key:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotifications:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->key:Landroid/os/IBinder;

    iget-object v4, p1, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v1, p1, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v1, v1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/UndertableStartingManagerService;->contain(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotificationsByTime:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-direct {p0}, Lcom/android/server/am/UndertableStartingManagerService;->sortNotificationsByTime()V

    .line 176
    iget-boolean v1, p0, Lcom/android/server/am/UndertableStartingManagerService;->mAutoStartingMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v1, v1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/UndertableStartingManagerService;->shouldStart(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p1, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v1, v1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 178
    .local v0, targetIntent:Landroid/app/PendingIntent;
    invoke-direct {p0, v0}, Lcom/android/server/am/UndertableStartingManagerService;->startActivity(Landroid/app/PendingIntent;)Z

    .line 181
    .end local v0           #targetIntent:Landroid/app/PendingIntent;
    :cond_1
    monitor-exit v2

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleRemoveNewNotification(Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;)V
    .locals 9
    .parameter "ne"

    .prologue
    .line 214
    const/4 v2, 0x0

    .line 215
    .local v2, old:Lcom/android/internal/statusbar/StatusBarNotification;
    const/4 v1, 0x0

    .line 216
    .local v1, isKeyguard:Z
    iget-object v5, p0, Lcom/android/server/am/UndertableStartingManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v5, :cond_0

    .line 217
    iget-object v5, p0, Lcom/android/server/am/UndertableStartingManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    .line 219
    :cond_0
    const-string v5, "UndertableStarting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "------------handleRemoveNewNotification--- mAutoStartingMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/am/UndertableStartingManagerService;->mAutoStartingMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isKeyguard = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v6, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v6

    .line 221
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotifications:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->key:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 222
    iget-object v5, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotifications:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->key:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/internal/statusbar/StatusBarNotification;

    move-object v2, v0

    .line 223
    iget-object v5, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotifications:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->key:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v5, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotificationsByTime:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 227
    :cond_1
    if-eqz v2, :cond_2

    iget-object v5, v2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-direct {p0, v5, v2}, Lcom/android/server/am/UndertableStartingManagerService;->contain(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 228
    iget-boolean v5, p0, Lcom/android/server/am/UndertableStartingManagerService;->mAutoStartingMode:Z

    if-eqz v5, :cond_2

    .line 229
    iget-object v5, v2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/am/UndertableStartingManagerService;->finishActivity(Ljava/lang/String;)Z

    .line 230
    iget-object v5, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotificationsByTime:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/am/UndertableStartingManagerService;->mResetActivityRecor:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_2

    .line 232
    iget-object v5, p0, Lcom/android/server/am/UndertableStartingManagerService;->mResetActivityRecor:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 233
    .local v3, resetIntent:Landroid/content/Intent;
    invoke-direct {p0, v3}, Lcom/android/server/am/UndertableStartingManagerService;->equalWithTop(Landroid/content/Intent;)Z

    move-result v4

    .line 234
    .local v4, sameWithTop:Z
    if-nez v4, :cond_3

    .line 235
    const v5, 0x30038000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 240
    iget-object v5, p0, Lcom/android/server/am/UndertableStartingManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 241
    const-string v5, "UndertableStarting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleRemoveNewNotification and start resetIntent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v3           #resetIntent:Landroid/content/Intent;
    .end local v4           #sameWithTop:Z
    :cond_2
    :goto_0
    monitor-exit v6

    .line 251
    return-void

    .line 243
    .restart local v3       #resetIntent:Landroid/content/Intent;
    .restart local v4       #sameWithTop:Z
    :cond_3
    const-string v5, "UndertableStarting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleRemoveNewNotification but do nothing because it is the same with top: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 250
    .end local v3           #resetIntent:Landroid/content/Intent;
    .end local v4           #sameWithTop:Z
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private handleUpdateNewNotification(Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;)V
    .locals 7
    .parameter "ne"

    .prologue
    .line 185
    iget-object v4, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v4

    .line 186
    :try_start_0
    const-string v3, "UndertableStarting"

    const-string v5, "------------handleUpdateNewNotification----------"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, -0x1

    .line 188
    .local v0, index:I
    const/4 v1, 0x0

    .line 189
    .local v1, old:Lcom/android/internal/statusbar/StatusBarNotification;
    iget-object v3, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotifications:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->key:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    iget-object v3, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotifications:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->key:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #old:Lcom/android/internal/statusbar/StatusBarNotification;
    check-cast v1, Lcom/android/internal/statusbar/StatusBarNotification;

    .line 191
    .restart local v1       #old:Lcom/android/internal/statusbar/StatusBarNotification;
    iget-object v3, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotifications:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->key:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotifications:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->key:Landroid/os/IBinder;

    iget-object v6, p1, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v3, p1, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v3, v3, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-direct {p0, v3, v5}, Lcom/android/server/am/UndertableStartingManagerService;->contain(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 196
    if-eqz v1, :cond_1

    .line 197
    iget-object v3, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotificationsByTime:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 198
    :cond_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 199
    iget-object v3, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotificationsByTime:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 201
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotificationsByTime:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-direct {p0}, Lcom/android/server/am/UndertableStartingManagerService;->sortNotificationsByTime()V

    .line 203
    iget-boolean v3, p0, Lcom/android/server/am/UndertableStartingManagerService;->mAutoStartingMode:Z

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v3, v3, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/UndertableStartingManagerService;->shouldStart(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 204
    iget-object v3, p1, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v3, v3, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v2, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 205
    .local v2, targetIntent:Landroid/app/PendingIntent;
    invoke-direct {p0, v2}, Lcom/android/server/am/UndertableStartingManagerService;->startActivity(Landroid/app/PendingIntent;)Z

    .line 209
    .end local v2           #targetIntent:Landroid/app/PendingIntent;
    :cond_3
    monitor-exit v4

    .line 210
    return-void

    .line 209
    .end local v0           #index:I
    .end local v1           #old:Lcom/android/internal/statusbar/StatusBarNotification;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private shouldStart(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkg"

    .prologue
    const/4 v2, 0x0

    .line 297
    if-nez p1, :cond_0

    move v1, v2

    .line 304
    :goto_0
    return v1

    .line 299
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/android/server/am/UndertableStartingManagerService;->AUTO_CHECK_PACKAGE:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 300
    sget-object v1, Lcom/android/server/am/UndertableStartingManagerService;->AUTO_CHECK_PACKAGE:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    const/4 v1, 0x1

    goto :goto_0

    .line 299
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 304
    goto :goto_0
.end method

.method private sortNotificationsByTime()V
    .locals 8

    .prologue
    .line 269
    iget-object v4, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotificationsByTime:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_0
    const/4 v4, 0x1

    if-lt v0, v4, :cond_2

    .line 270
    add-int/lit8 v2, v0, -0x1

    .local v2, j:I
    :goto_1
    if-ltz v2, :cond_1

    .line 271
    iget-object v4, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotificationsByTime:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarNotification;

    .line 272
    .local v1, iCur:Lcom/android/internal/statusbar/StatusBarNotification;
    iget-object v4, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotificationsByTime:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/statusbar/StatusBarNotification;

    .line 273
    .local v3, jCur:Lcom/android/internal/statusbar/StatusBarNotification;
    iget-object v4, v1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v4, v4, Landroid/app/Notification;->when:J

    iget-object v6, v3, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v6, v6, Landroid/app/Notification;->when:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 274
    iget-object v4, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotificationsByTime:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 275
    iget-object v4, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotificationsByTime:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 276
    iget-object v4, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotificationsByTime:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 277
    iget-object v4, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotificationsByTime:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 270
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 269
    .end local v1           #iCur:Lcom/android/internal/statusbar/StatusBarNotification;
    .end local v3           #jCur:Lcom/android/internal/statusbar/StatusBarNotification;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 281
    .end local v2           #j:I
    :cond_2
    return-void
.end method

.method private startActivity(Landroid/app/PendingIntent;)Z
    .locals 10
    .parameter "pendingIntent"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 336
    if-nez p1, :cond_1

    .line 382
    :cond_0
    :goto_0
    return v7

    .line 339
    :cond_1
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    move-result-object v4

    .local v4, target:Landroid/content/IIntentSender;
    move-object v2, v4

    .line 340
    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    .line 341
    .local v2, requestTarget:Lcom/android/server/am/PendingIntentRecord;
    if-eqz v2, :cond_0

    iget-object v8, v2, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    if-eqz v8, :cond_0

    .line 344
    iget-object v8, v2, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v8, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 345
    .local v5, targetIntent:Landroid/content/Intent;
    if-eqz v5, :cond_0

    .line 349
    const/4 v1, 0x0

    .line 350
    .local v1, isLockSecurity:Z
    iget-object v8, p0, Lcom/android/server/am/UndertableStartingManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v8, :cond_2

    .line 351
    iget-object v8, p0, Lcom/android/server/am/UndertableStartingManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/am/UndertableStartingManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "meuzu_keyguard_lock"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_3

    move v1, v6

    .line 356
    :cond_2
    :goto_1
    invoke-direct {p0, v5}, Lcom/android/server/am/UndertableStartingManagerService;->equalWithTop(Landroid/content/Intent;)Z

    move-result v3

    .line 357
    .local v3, sameWithTop:Z
    if-nez v3, :cond_5

    .line 364
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 365
    .local v0, intent:Landroid/content/Intent;
    const v7, 0x30038000

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 370
    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addMeizuFlags(I)Landroid/content/Intent;

    .line 371
    if-nez v1, :cond_4

    .line 372
    invoke-virtual {v0}, Landroid/content/Intent;->getMeizuFlags()I

    move-result v7

    and-int/lit16 v7, v7, -0x81

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setMeizuFlags(I)Landroid/content/Intent;

    .line 376
    :goto_2
    iget-object v7, p0, Lcom/android/server/am/UndertableStartingManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 377
    const-string v7, "UndertableStarting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " startActivity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #intent:Landroid/content/Intent;
    :goto_3
    move v7, v6

    .line 382
    goto :goto_0

    .end local v3           #sameWithTop:Z
    :cond_3
    move v1, v7

    .line 351
    goto :goto_1

    .line 374
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v3       #sameWithTop:Z
    :cond_4
    const/16 v7, 0x80

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addMeizuFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 379
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    const-string v7, "UndertableStarting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " startActivity but they are the same: intent is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private startList()V
    .locals 4

    .prologue
    .line 254
    iget-boolean v3, p0, Lcom/android/server/am/UndertableStartingManagerService;->mAutoStartingMode:Z

    if-nez v3, :cond_1

    .line 263
    :cond_0
    return-void

    .line 256
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotificationsByTime:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 257
    iget-object v3, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotificationsByTime:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarNotification;

    .line 258
    .local v1, ne:Lcom/android/internal/statusbar/StatusBarNotification;
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/UndertableStartingManagerService;->shouldStart(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    iget-object v3, v1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v2, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 260
    .local v2, targetIntent:Landroid/app/PendingIntent;
    invoke-direct {p0, v2}, Lcom/android/server/am/UndertableStartingManagerService;->startActivity(Landroid/app/PendingIntent;)Z

    .line 256
    .end local v2           #targetIntent:Landroid/app/PendingIntent;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 5
    .parameter "key"
    .parameter "notification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v2

    .line 135
    :try_start_0
    new-instance v0, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;-><init>(Lcom/android/server/am/UndertableStartingManagerService;Lcom/android/server/am/UndertableStartingManagerService$1;)V

    .line 136
    .local v0, ne:Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;
    iput-object p1, v0, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->key:Landroid/os/IBinder;

    .line 137
    iput-object p2, v0, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 138
    iget-object v1, p0, Lcom/android/server/am/UndertableStartingManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/UndertableStartingManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x12c

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 139
    monitor-exit v2

    goto :goto_0

    .end local v0           #ne:Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disableAutoStarting()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 422
    const-string v0, "UndertableStarting"

    const-string v1, "----------------disableAutoStarting--------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/UndertableStartingManagerService;->mAutoStartingMode:Z

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UndertableStartingManagerService;->mResetActivityRecor:Lcom/android/server/am/ActivityRecord;

    .line 425
    return-void
.end method

.method public enableAutoStarting()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x12f

    .line 401
    iget-object v3, p0, Lcom/android/server/am/UndertableStartingManagerService;->mAutoStartingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 402
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/UndertableStartingManagerService;->mAutoStartingMode:Z

    .line 403
    iget-object v3, p0, Lcom/android/server/am/UndertableStartingManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getTopHistory()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 404
    .local v2, top:Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    .line 405
    const-string v3, "UndertableStarting"

    const-string v4, "----------------enableAutoStarting--------------"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/android/server/am/UndertableStartingManagerService;->AUTO_STARTING_ACTIVITY:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 407
    sget-object v3, Lcom/android/server/am/UndertableStartingManagerService;->AUTO_STARTING_ACTIVITY:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 408
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 409
    iput-object v2, p0, Lcom/android/server/am/UndertableStartingManagerService;->mResetActivityRecor:Lcom/android/server/am/ActivityRecord;

    .line 410
    const-string v3, "UndertableStarting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableAutoStarting, mResetActivityRecor is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/UndertableStartingManagerService;->mResetActivityRecor:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", class is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/UndertableStartingManagerService;->mResetActivityRecor:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #i:I
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/UndertableStartingManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    iget-object v3, p0, Lcom/android/server/am/UndertableStartingManagerService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/am/UndertableStartingManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 418
    return-void

    .line 406
    .restart local v0       #component:Landroid/content/ComponentName;
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getTopPendingIntentBy(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 459
    iget-object v3, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotificationsByTime:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 460
    iget-object v3, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotificationsByTime:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarNotification;

    .line 461
    .local v1, ne:Lcom/android/internal/statusbar/StatusBarNotification;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    iget-object v3, v1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v2, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 466
    .end local v1           #ne:Lcom/android/internal/statusbar/StatusBarNotification;
    :goto_1
    return-object v2

    .line 459
    .restart local v1       #ne:Lcom/android/internal/statusbar/StatusBarNotification;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 466
    .end local v1           #ne:Lcom/android/internal/statusbar/StatusBarNotification;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public initCheckAndStartActivityList(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p1, checkPackage:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, startActivity:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    sget-object v1, Lcom/android/server/am/UndertableStartingManagerService;->AUTO_CHECK_PACKAGE:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 434
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 435
    sget-object v1, Lcom/android/server/am/UndertableStartingManagerService;->AUTO_CHECK_PACKAGE:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    :cond_0
    sget-object v1, Lcom/android/server/am/UndertableStartingManagerService;->AUTO_STARTING_ACTIVITY:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 439
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 440
    sget-object v1, Lcom/android/server/am/UndertableStartingManagerService;->AUTO_STARTING_ACTIVITY:Ljava/util/ArrayList;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 442
    :cond_1
    return-void
.end method

.method public initNotifications(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/statusbar/StatusBarNotification;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, notificationKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .local p2, notifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarNotification;>;"
    iget-object v4, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v4

    .line 119
    :try_start_0
    const-string v3, "UndertableStarting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initNotifications size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 121
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 122
    .local v1, key:Landroid/os/IBinder;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/StatusBarNotification;

    .line 123
    .local v2, value:Lcom/android/internal/statusbar/StatusBarNotification;
    iget-object v3, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v3, "UndertableStarting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] when: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v6, v6, Landroid/app/Notification;->when:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", content, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .end local v1           #key:Landroid/os/IBinder;
    .end local v2           #value:Lcom/android/internal/statusbar/StatusBarNotification;
    :cond_0
    monitor-exit v4

    .line 127
    return-void

    .line 126
    .end local v0           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public isEnableAutoStarting()Z
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/android/server/am/UndertableStartingManagerService;->mAutoStartingMode:Z

    return v0
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v2

    .line 160
    :try_start_0
    new-instance v0, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;-><init>(Lcom/android/server/am/UndertableStartingManagerService;Lcom/android/server/am/UndertableStartingManagerService$1;)V

    .line 161
    .local v0, ne:Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;
    iput-object p1, v0, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->key:Landroid/os/IBinder;

    .line 162
    iget-object v1, p0, Lcom/android/server/am/UndertableStartingManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/UndertableStartingManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x12e

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    monitor-exit v2

    goto :goto_0

    .end local v0           #ne:Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady()V
    .locals 6

    .prologue
    .line 102
    const-string v4, "UndertableStarting"

    const-string v5, "systemReady"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v4, p0, Lcom/android/server/am/UndertableStartingManagerService;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    iput-object v4, p0, Lcom/android/server/am/UndertableStartingManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 104
    const-string v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 107
    .local v1, mBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v2, notificationKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v3, notifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarNotification;>;"
    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->registerUndertableStarting(Landroid/app/IUndertableStartingManager;Ljava/util/List;Ljava/util/List;)V

    .line 110
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/UndertableStartingManagerService;->initNotifications(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v2           #notificationKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v3           #notifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarNotification;>;"
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 5
    .parameter "key"
    .parameter "notification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 145
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UndertableStartingManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v2

    .line 148
    :try_start_0
    new-instance v0, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;-><init>(Lcom/android/server/am/UndertableStartingManagerService;Lcom/android/server/am/UndertableStartingManagerService$1;)V

    .line 149
    .local v0, ne:Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;
    iput-object p1, v0, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->key:Landroid/os/IBinder;

    .line 150
    iput-object p2, v0, Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 151
    iget-object v1, p0, Lcom/android/server/am/UndertableStartingManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/UndertableStartingManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x12d

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 152
    monitor-exit v2

    goto :goto_0

    .end local v0           #ne:Lcom/android/server/am/UndertableStartingManagerService$NotificationQueueEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
