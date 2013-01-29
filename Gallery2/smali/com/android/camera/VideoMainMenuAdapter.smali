.class public Lcom/android/camera/VideoMainMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoMainMenuAdapter.java"


# instance fields
.field private mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

.field private mContext:Landroid/content/Context;

.field private mCurSel:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsFlymeMMSIntent:Z

.field private mIsMeizuMMSIntent:Z

.field private mIsNoneAutoScense:Z

.field private mItemData:[Ljava/lang/String;

.field private mItemTips:[Ljava/lang/String;

.field private mItemTispDefault:[Ljava/lang/String;

.field private mPref:Landroid/content/SharedPreferences;

.field private mScenseEntries:[Ljava/lang/String;

.field private mScenseEntryVaule:[Ljava/lang/String;

.field private mSelIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWBEntries:[Ljava/lang/String;

.field private mWBEntryVaule:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;II)V
    .locals 1
    .parameter "context"
    .parameter "pref"
    .parameter "resDataId"
    .parameter "resDefaultId"

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/android/camera/VideoMainMenuAdapter;->mIsNoneAutoScense:Z

    .line 32
    iput v0, p0, Lcom/android/camera/VideoMainMenuAdapter;->mCurSel:I

    .line 34
    iput-boolean v0, p0, Lcom/android/camera/VideoMainMenuAdapter;->mIsMeizuMMSIntent:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/camera/VideoMainMenuAdapter;->mIsFlymeMMSIntent:Z

    .line 38
    iput-object p1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoMainMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoMainMenuAdapter;->mItemData:[Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/android/camera/VideoMainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoMainMenuAdapter;->mItemTispDefault:[Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/android/camera/VideoMainMenuAdapter;->mPref:Landroid/content/SharedPreferences;

    .line 43
    invoke-static {}, Lcom/android/camera/CameraDeviceManager;->getCameraMenuInfo()Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoMainMenuAdapter;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    .line 44
    invoke-direct {p0, p4}, Lcom/android/camera/VideoMainMenuAdapter;->initItemTips(I)V

    .line 45
    return-void
.end method

.method private changeMXVideoSizeTip(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 104
    const-string v0, "6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/camera/VideoMainMenuAdapter;->mSelIndex:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    const-string v0, "1080P"

    .line 114
    :goto_0
    return-object v0

    .line 107
    :cond_0
    const-string v0, "5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/camera/VideoMainMenuAdapter;->mSelIndex:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    const-string v0, "720P"

    goto :goto_0

    .line 110
    :cond_1
    const-string v0, "4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/android/camera/VideoMainMenuAdapter;->mSelIndex:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v0, "480P"

    goto :goto_0

    .line 114
    :cond_2
    const-string v0, "1080P"

    goto :goto_0
.end method

.method private getEntry(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "vaule"
    .parameter "entry"
    .parameter "entryVaule"
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 73
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v1

    .line 76
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 77
    aget-object v2, p3, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    iget-object v1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mSelIndex:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    aget-object v1, p2, v0

    goto :goto_0

    .line 76
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private initItemTips(I)V
    .locals 9
    .parameter "defaultId"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 48
    iget-object v1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mItemTips:[Ljava/lang/String;

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 53
    .local v0, r:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    iget v1, v1, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mSceneMenuKeyArrayId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mScenseEntries:[Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    iget v1, v1, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mSceneMenuValueArrayId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mScenseEntryVaule:[Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    iget v1, v1, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mWhiteBalanceKeyArrayId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mWBEntries:[Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mCameraMenuInfo:Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;

    iget v1, v1, Lcom/android/camera/CameraDeviceManager$ICameraDevice$CameraMenuInfo;->mWhiteBalanceValueArrayId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mWBEntryVaule:[Ljava/lang/String;

    .line 57
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mItemTips:[Ljava/lang/String;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mSelIndex:Ljava/util/ArrayList;

    .line 59
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v1

    sget v2, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-eq v1, v2, :cond_2

    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v1

    sget v2, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v1, v2, :cond_3

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mItemTips:[Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/VideoMainMenuAdapter;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "pref_video_quality_key"

    const-string v5, "5"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/camera/VideoMainMenuAdapter;->changeMXVideoSizeTip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 63
    :cond_3
    iget-object v1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mItemTips:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/VideoMainMenuAdapter;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "pref_camera_scenemode_key"

    const-string v4, "auto"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoMainMenuAdapter;->mScenseEntries:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/VideoMainMenuAdapter;->mScenseEntryVaule:[Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v7}, Lcom/android/camera/VideoMainMenuAdapter;->getEntry(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 65
    iget-object v1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mItemTips:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/VideoMainMenuAdapter;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "pref_camera_whitebalance_key"

    const-string v4, "auto"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoMainMenuAdapter;->mWBEntries:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/VideoMainMenuAdapter;->mWBEntryVaule:[Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v8}, Lcom/android/camera/VideoMainMenuAdapter;->getEntry(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 67
    iget-object v1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mSelIndex:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iput-boolean v6, p0, Lcom/android/camera/VideoMainMenuAdapter;->mIsNoneAutoScense:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/camera/VideoMainMenuAdapter;->mItemData:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 148
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelIndex()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/VideoMainMenuAdapter;->mSelIndex:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 177
    if-nez p2, :cond_0

    .line 178
    iget-object v3, p0, Lcom/android/camera/VideoMainMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040037

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 180
    :cond_0
    iget v3, p0, Lcom/android/camera/VideoMainMenuAdapter;->mCurSel:I

    if-ne v3, p1, :cond_1

    .line 181
    const v3, 0x7f020121

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 185
    :goto_0
    iget-object v3, p0, Lcom/android/camera/VideoMainMenuAdapter;->mItemData:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_2

    .line 186
    iget-object v3, p0, Lcom/android/camera/VideoMainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 192
    :goto_1
    const v3, 0x7f0d00a2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 193
    .local v0, t1:Landroid/widget/TextView;
    const v3, 0x7f0d00a3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 194
    .local v1, t2:Landroid/widget/TextView;
    const v3, 0x7f0d00a4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 195
    .local v2, v1:Landroid/view/View;
    iget-object v3, p0, Lcom/android/camera/VideoMainMenuAdapter;->mItemData:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_3

    .line 196
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/camera/VideoMainMenuAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 201
    iget-object v3, p0, Lcom/android/camera/VideoMainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080037

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    iget-object v3, p0, Lcom/android/camera/VideoMainMenuAdapter;->mItemTispDefault:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :goto_3
    iget-object v3, p0, Lcom/android/camera/VideoMainMenuAdapter;->mItemData:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    return-object p2

    .line 183
    .end local v0           #t1:Landroid/widget/TextView;
    .end local v1           #t2:Landroid/widget/TextView;
    .end local v2           #v1:Landroid/view/View;
    :cond_1
    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 189
    :cond_2
    iget-object v3, p0, Lcom/android/camera/VideoMainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090052

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_1

    .line 198
    .restart local v0       #t1:Landroid/widget/TextView;
    .restart local v1       #t2:Landroid/widget/TextView;
    .restart local v2       #v1:Landroid/view/View;
    :cond_3
    const v3, 0x7f02011e

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 204
    :cond_4
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    iget-object v3, p0, Lcom/android/camera/VideoMainMenuAdapter;->mItemTips:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 157
    iget-boolean v1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mIsNoneAutoScense:Z

    if-eqz v1, :cond_3

    .line 158
    iget-boolean v1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mIsMeizuMMSIntent:Z

    if-eqz v1, :cond_1

    .line 159
    if-eqz p1, :cond_0

    if-ne p1, v2, :cond_2

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    if-eq p1, v2, :cond_0

    .line 172
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0

    .line 167
    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mIsMeizuMMSIntent:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mIsFlymeMMSIntent:Z

    if-nez v1, :cond_2

    .line 168
    if-nez p1, :cond_2

    goto :goto_0
.end method

.method public setCurSel(I)V
    .locals 0
    .parameter "sel"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mCurSel:I

    .line 101
    return-void
.end method

.method public setIsAutoScense(Z)V
    .locals 0
    .parameter "isAuto"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mIsNoneAutoScense:Z

    .line 153
    return-void
.end method

.method public setIsFlymeMMSIntent(Z)V
    .locals 0
    .parameter "isFlymeMMSIntent"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mIsFlymeMMSIntent:Z

    .line 91
    return-void
.end method

.method public setIsMeizuMMSIntent(Z)V
    .locals 0
    .parameter "isMeizuMMSIntent"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/camera/VideoMainMenuAdapter;->mIsMeizuMMSIntent:Z

    .line 87
    return-void
.end method

.method public setItemTip(ILjava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "tip"

    .prologue
    .line 94
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoMainMenuAdapter;->mItemTispDefault:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoMainMenuAdapter;->mItemTispDefault:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/camera/VideoMainMenuAdapter;->mItemTispDefault:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 97
    :cond_0
    return-void
.end method

.method public setTipsStr(ILjava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "str"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/VideoMainMenuAdapter;->mItemTips:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 144
    return-void
.end method
