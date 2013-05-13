.class public Lcom/meizu/internal/policy/impl/LockEmergencyCallView;
.super Landroid/widget/RelativeLayout;
.source "LockEmergencyCallView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;,
        Lcom/meizu/internal/policy/impl/LockEmergencyCallView$OnReturnButtonClickListener;,
        Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;
    }
.end annotation


# static fields
.field private static final CALL_NUM_MAX_COUT:I = 0xa

.field private static final DBG:Z = false

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "LockEmergencyCallView"


# instance fields
.field private mIKeyguardWidget:Lcom/meizu/internal/policy/impl/ILockWidget;

.field private mIsCalling:Z

.field private mNumCount:I

.field private mOnReturnButtonClickListener:Lcom/meizu/internal/policy/impl/LockEmergencyCallView$OnReturnButtonClickListener;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mStartMode:Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mTvCallNum:Landroid/widget/TextView;

.field private mTvTips:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mNumCount:I

    .line 48
    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mIsCalling:Z

    .line 50
    iput-object v2, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mOnReturnButtonClickListener:Lcom/meizu/internal/policy/impl/LockEmergencyCallView$OnReturnButtonClickListener;

    .line 51
    iput-object v2, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mTm:Landroid/telephony/TelephonyManager;

    .line 58
    iput-object v2, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mIKeyguardWidget:Lcom/meizu/internal/policy/impl/ILockWidget;

    .line 89
    new-instance v0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$1;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$1;-><init>(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090051

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 76
    const v0, 0x10202cb

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mTvCallNum:Landroid/widget/TextView;

    .line 77
    const v0, 0x10202c7

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mTvTips:Landroid/widget/TextView;

    .line 78
    sget-object v0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;->LockPhone:Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mStartMode:Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;

    .line 79
    new-instance v0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;

    invoke-direct {v0, p0, v2}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;-><init>(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;Lcom/meizu/internal/policy/impl/LockEmergencyCallView$1;)V

    .line 81
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mTm:Landroid/telephony/TelephonyManager;

    .line 82
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mTm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 84
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mStatusBar:Landroid/app/StatusBarManager;

    .line 86
    invoke-virtual {p0, v3}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->setFocusableInTouchMode(Z)V

    .line 87
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mIsCalling:Z

    return v0
.end method

.method static synthetic access$102(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mIsCalling:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->updateView()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->reportDigit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mTvCallNum:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)Lcom/meizu/internal/policy/impl/LockEmergencyCallView$OnReturnButtonClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mOnReturnButtonClickListener:Lcom/meizu/internal/policy/impl/LockEmergencyCallView$OnReturnButtonClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)Lcom/meizu/internal/policy/impl/ILockWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mIKeyguardWidget:Lcom/meizu/internal/policy/impl/ILockWidget;

    return-object v0
.end method

.method private reportDigit(Ljava/lang/String;)V
    .locals 4
    .parameter "digit"

    .prologue
    .line 137
    const-string v2, "delete"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    iget v2, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mNumCount:I

    if-lez v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mTvCallNum:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 141
    .local v1, numString:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 142
    .local v0, newString:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mTvCallNum:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget v2, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mNumCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mNumCount:I

    .line 157
    .end local v0           #newString:Ljava/lang/CharSequence;
    .end local v1           #numString:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget v2, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mNumCount:I

    if-nez v2, :cond_3

    .line 147
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mTvCallNum:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_2
    iget-boolean v2, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mIsCalling:Z

    if-nez v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mTvCallNum:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 153
    iget v2, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mNumCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mNumCount:I

    goto :goto_0

    .line 148
    :cond_3
    iget v2, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mNumCount:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    goto :goto_0
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mIsCalling:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mTvTips:Landroid/widget/TextView;

    const v1, 0x1040561

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 121
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mTvTips:Landroid/widget/TextView;

    const v1, 0x1040351

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->clearText()V

    .line 119
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->cancelSpeakerphone()V

    goto :goto_0
.end method


# virtual methods
.method cancelSpeakerphone()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mStatusBar:Landroid/app/StatusBarManager;

    const-string v1, "speakerphone"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public cleanUp()V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mTm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 329
    return-void
.end method

.method public clearText()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mTvCallNum:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mNumCount:I

    .line 126
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 56
    return-void
.end method

.method public isCalling()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mIsCalling:Z

    return v0
.end method

.method notifySpeakerphone()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 311
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mOnReturnButtonClickListener:Lcom/meizu/internal/policy/impl/LockEmergencyCallView$OnReturnButtonClickListener;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mOnReturnButtonClickListener:Lcom/meizu/internal/policy/impl/LockEmergencyCallView$OnReturnButtonClickListener;

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$OnReturnButtonClickListener;->onReturnButtonClick()V

    .line 318
    :cond_0
    const/4 v0, 0x1

    .line 320
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIKeyguardWidget(Lcom/meizu/internal/policy/impl/ILockWidget;)V
    .locals 0
    .parameter "keyguardWidget"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mIKeyguardWidget:Lcom/meizu/internal/policy/impl/ILockWidget;

    .line 70
    return-void
.end method

.method public setOnReturnButtonClickListener(Lcom/meizu/internal/policy/impl/LockEmergencyCallView$OnReturnButtonClickListener;)V
    .locals 0
    .parameter "onReturnButtonClickListener"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mOnReturnButtonClickListener:Lcom/meizu/internal/policy/impl/LockEmergencyCallView$OnReturnButtonClickListener;

    .line 66
    return-void
.end method

.method public setStartMode(Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mStartMode:Lcom/meizu/internal/policy/impl/LockEmergencyCallView$StartMode;

    .line 109
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->updateView()V

    .line 110
    return-void
.end method
