.class public Lcom/android/camera/OtherMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "OtherMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/OtherMenuAdapter$Listener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsFlymeMMSIntent:Z

.field private mIsMeizuMMSIntent:Z

.field private mItemData:[Ljava/lang/String;

.field private mListener:Lcom/android/camera/OtherMenuAdapter$Listener;

.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/content/SharedPreferences;)V
    .locals 1
    .parameter "context"
    .parameter "resId"
    .parameter "pref"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/android/camera/OtherMenuAdapter;->mIsMeizuMMSIntent:Z

    .line 27
    iput-boolean v0, p0, Lcom/android/camera/OtherMenuAdapter;->mIsFlymeMMSIntent:Z

    .line 30
    iput-object p1, p0, Lcom/android/camera/OtherMenuAdapter;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/OtherMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/OtherMenuAdapter;->mItemData:[Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/android/camera/OtherMenuAdapter;->mPref:Landroid/content/SharedPreferences;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/OtherMenuAdapter;)Lcom/android/camera/OtherMenuAdapter$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/OtherMenuAdapter;->mListener:Lcom/android/camera/OtherMenuAdapter$Listener;

    return-object v0
.end method

.method private changeMXPicSizeToIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "str"

    .prologue
    const/4 v0, 0x0

    .line 87
    const-string v1, "1280x960"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    const-string v1, "2048x1536"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    :cond_2
    const-string v1, "2560x1920"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    const/4 v0, 0x2

    goto :goto_0

    .line 93
    :cond_3
    const-string v1, "3264x2448"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private initCheckView(Landroid/widget/CheckedTextView;I)V
    .locals 1
    .parameter "v"
    .parameter "position"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/OtherMenuAdapter;->mItemData:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {p0, p2}, Lcom/android/camera/OtherMenuAdapter;->isEnabled(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 115
    invoke-virtual {p0, p2}, Lcom/android/camera/OtherMenuAdapter;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    const v0, -0x7f1a1a1b

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    const v0, 0x7f020028

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    .line 120
    const v0, -0x1a1a1b

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/OtherMenuAdapter;->mItemData:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x1

    const v8, 0x7f040044

    const v7, 0x1020014

    const/4 v6, 0x0

    .line 126
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v4

    sget v5, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-eq v4, v5, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v4

    sget v5, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v4, v5, :cond_1

    .line 127
    :cond_0
    const/4 v4, 0x3

    if-ne p1, v4, :cond_4

    .line 128
    iget-object v4, p0, Lcom/android/camera/OtherMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040062

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 129
    const v4, 0x7f0d013a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 130
    .local v2, t1:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/camera/OtherMenuAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 131
    const v4, -0x7f1a1a1b

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    :goto_0
    const v4, 0x7f0d013b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 136
    .local v3, t2:Landroid/widget/TextView;
    const v4, 0x7f0d013c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 137
    .local v1, s1:Landroid/widget/SeekBar;
    iget-boolean v4, p0, Lcom/android/camera/OtherMenuAdapter;->mIsMeizuMMSIntent:Z

    if-eqz v4, :cond_3

    .line 138
    const-string v4, "3M"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {v1, v9}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 144
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/camera/OtherMenuAdapter;->isEnabled(I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 145
    new-instance v4, Lcom/android/camera/OtherMenuAdapter$1;

    invoke-direct {v4, p0, v3}, Lcom/android/camera/OtherMenuAdapter$1;-><init>(Lcom/android/camera/OtherMenuAdapter;Landroid/widget/TextView;)V

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 199
    .end local v1           #s1:Landroid/widget/SeekBar;
    .end local v2           #t1:Landroid/widget/TextView;
    .end local v3           #t2:Landroid/widget/TextView;
    :cond_1
    :goto_2
    return-object p2

    .line 133
    .restart local v2       #t1:Landroid/widget/TextView;
    :cond_2
    const v4, -0x1a1a1b

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 141
    .restart local v1       #s1:Landroid/widget/SeekBar;
    .restart local v3       #t2:Landroid/widget/TextView;
    :cond_3
    iget-object v4, p0, Lcom/android/camera/OtherMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/camera/Util;->getMXPicSizeVaule(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v4, p0, Lcom/android/camera/OtherMenuAdapter;->mPref:Landroid/content/SharedPreferences;

    const-string v5, "pref_camera_picturesize_key"

    const-string v6, "3264x2448"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/camera/OtherMenuAdapter;->changeMXPicSizeToIndex(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 182
    .end local v1           #s1:Landroid/widget/SeekBar;
    .end local v2           #t1:Landroid/widget/TextView;
    .end local v3           #t2:Landroid/widget/TextView;
    :cond_4
    if-nez p1, :cond_5

    .line 183
    iget-object v4, p0, Lcom/android/camera/OtherMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 184
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 185
    .local v0, ct:Landroid/widget/CheckedTextView;
    invoke-direct {p0, v0, p1}, Lcom/android/camera/OtherMenuAdapter;->initCheckView(Landroid/widget/CheckedTextView;I)V

    .line 186
    iget-object v4, p0, Lcom/android/camera/OtherMenuAdapter;->mPref:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/android/camera/OtherMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_2

    .line 187
    .end local v0           #ct:Landroid/widget/CheckedTextView;
    :cond_5
    if-ne p1, v9, :cond_6

    .line 188
    iget-object v4, p0, Lcom/android/camera/OtherMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 189
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 190
    .restart local v0       #ct:Landroid/widget/CheckedTextView;
    invoke-direct {p0, v0, p1}, Lcom/android/camera/OtherMenuAdapter;->initCheckView(Landroid/widget/CheckedTextView;I)V

    .line 191
    iget-object v4, p0, Lcom/android/camera/OtherMenuAdapter;->mPref:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/android/camera/OtherMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/RecordWdrPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_2

    .line 192
    .end local v0           #ct:Landroid/widget/CheckedTextView;
    :cond_6
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    .line 193
    iget-object v4, p0, Lcom/android/camera/OtherMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 194
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 195
    .restart local v0       #ct:Landroid/widget/CheckedTextView;
    invoke-direct {p0, v0, p1}, Lcom/android/camera/OtherMenuAdapter;->initCheckView(Landroid/widget/CheckedTextView;I)V

    .line 196
    iget-object v4, p0, Lcom/android/camera/OtherMenuAdapter;->mPref:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/android/camera/OtherMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/RecordGesturePreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_2
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 69
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 74
    if-eq p1, v3, :cond_0

    .line 83
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0

    .line 78
    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/OtherMenuAdapter;->mIsMeizuMMSIntent:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/OtherMenuAdapter;->mIsFlymeMMSIntent:Z

    if-nez v1, :cond_2

    .line 79
    if-ne p1, v3, :cond_2

    goto :goto_0
.end method

.method public setIsFlymeMMSIntent(Z)V
    .locals 0
    .parameter "isFlymeMMSIntent"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/camera/OtherMenuAdapter;->mIsFlymeMMSIntent:Z

    .line 55
    return-void
.end method

.method public setIsMeizuMMSIntent(Z)V
    .locals 0
    .parameter "isMeizuMMSIntent"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/camera/OtherMenuAdapter;->mIsMeizuMMSIntent:Z

    .line 51
    return-void
.end method

.method public setListener(Lcom/android/camera/OtherMenuAdapter$Listener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/camera/OtherMenuAdapter;->mListener:Lcom/android/camera/OtherMenuAdapter$Listener;

    .line 47
    return-void
.end method
