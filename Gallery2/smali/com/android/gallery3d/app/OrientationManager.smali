.class public Lcom/android/gallery3d/app/OrientationManager;
.super Ljava/lang/Object;
.source "OrientationManager.java"

# interfaces
.implements Lcom/android/gallery3d/ui/OrientationSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;,
        Lcom/android/gallery3d/app/OrientationManager$Listener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/app/OrientationManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;

.field private mOrientationLocked:Z

.field private mRotationLockedSetting:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientation:I

    .line 49
    iput-boolean v1, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    .line 54
    iput v1, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationCompensation:I

    .line 58
    iput-boolean v1, p0, Lcom/android/gallery3d/app/OrientationManager;->mRotationLockedSetting:Z

    .line 61
    iput-object p1, p0, Lcom/android/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;-><init>(Lcom/android/gallery3d/app/OrientationManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationListener:Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/OrientationManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/app/OrientationManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientation:I

    return p1
.end method

.method static synthetic access$100(II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/android/gallery3d/app/OrientationManager;->roundOrientation(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/OrientationManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/OrientationManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/gallery3d/app/OrientationManager;->updateCompensation()V

    return-void
.end method

.method private disableCompensation()V
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationCompensation:I

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationCompensation:I

    .line 143
    invoke-direct {p0}, Lcom/android/gallery3d/app/OrientationManager;->notifyListeners()V

    .line 145
    :cond_0
    return-void
.end method

.method private static getDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 202
    .local v0, rotation:I
    packed-switch v0, :pswitch_data_0

    .line 208
    :goto_0
    :pswitch_0
    return v1

    .line 204
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 205
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 206
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private notifyListeners()V
    .locals 4

    .prologue
    .line 148
    iget-object v3, p0, Lcom/android/gallery3d/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 149
    const/4 v0, 0x0

    .local v0, i:I
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 150
    iget-object v2, p0, Lcom/android/gallery3d/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/OrientationManager$Listener;

    invoke-interface {v2}, Lcom/android/gallery3d/app/OrientationManager$Listener;->onOrientationCompensationChanged()V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    monitor-exit v3

    .line 153
    return-void

    .line 152
    .end local v1           #n:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static roundOrientation(II)I
    .locals 3
    .parameter "orientation"
    .parameter "orientationHistory"

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, changeOrientation:Z
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 187
    const/4 v0, 0x1

    .line 193
    :goto_0
    if-eqz v0, :cond_0

    .line 194
    add-int/lit8 v2, p0, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 p1, v2, 0x168

    .line 196
    .end local p1
    :cond_0
    return p1

    .line 189
    .restart local p1
    :cond_1
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 190
    .local v1, dist:I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 191
    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateCompensation()V
    .locals 3

    .prologue
    .line 126
    iget v1, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientation:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientation:I

    iget-object v2, p0, Lcom/android/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/gallery3d/app/OrientationManager;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 133
    .local v0, orientationCompensation:I
    iget v1, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationCompensation:I

    if-eq v1, v0, :cond_0

    .line 134
    iput v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationCompensation:I

    .line 135
    invoke-direct {p0}, Lcom/android/gallery3d/app/OrientationManager;->notifyListeners()V

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/android/gallery3d/app/OrientationManager$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/gallery3d/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCompensation()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationCompensation:I

    return v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/gallery3d/app/OrientationManager;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public lockOrientation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 100
    iget-boolean v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    if-eqz v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 101
    :cond_0
    iput-boolean v2, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 104
    const-string v0, "OrientationManager"

    const-string v1, "lock orientation to landscape"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 110
    :goto_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/OrientationManager;->updateCompensation()V

    goto :goto_0

    .line 107
    :cond_1
    const-string v0, "OrientationManager"

    const-string v1, "lock orientation to portrait"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationListener:Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;->disable()V

    .line 75
    return-void
.end method

.method public removeListener(Lcom/android/gallery3d/app/OrientationManager$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/gallery3d/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 86
    monitor-exit v1

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    iget-object v3, p0, Lcom/android/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 68
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "accelerometer_rotation"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/gallery3d/app/OrientationManager;->mRotationLockedSetting:Z

    .line 70
    iget-object v1, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationListener:Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;->enable()V

    .line 71
    return-void

    :cond_0
    move v1, v2

    .line 68
    goto :goto_0
.end method

.method public unlockOrientation()V
    .locals 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mRotationLockedSetting:Z

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mOrientationLocked:Z

    .line 119
    const-string v0, "OrientationManager"

    const-string v1, "unlock orientation"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/app/OrientationManager;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 121
    invoke-direct {p0}, Lcom/android/gallery3d/app/OrientationManager;->disableCompensation()V

    goto :goto_0
.end method
