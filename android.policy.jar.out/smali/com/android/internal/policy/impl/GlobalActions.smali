.class Lcom/android/internal/policy/impl/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;,
        Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;,
        Lcom/android/internal/policy/impl/GlobalActions$Action;,
        Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    }
.end annotation


# static fields
.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x3

.field private static final EVENT_SERVICE_STATE_CHANGED_SETTING:I = 0x4

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GlobalActions"


# instance fields
.field private airplane_img_light:Landroid/widget/ImageView;

.field private call_img_light:Landroid/widget/ImageView;

.field private mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

.field private mAirplaneImageView:Landroid/widget/ImageView;

.field private mAirplaneLayout:Landroid/widget/LinearLayout;

.field private mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallImageView:Landroid/widget/ImageView;

.field private mCallLayout:Landroid/widget/LinearLayout;

.field private mCloseLayout:Landroid/widget/LinearLayout;

.field private mCloseTextView:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerPhone:Landroid/os/Handler;

.field private mHandlerSetting:Landroid/os/Handler;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private mLightOffDrawable:Landroid/graphics/drawable/Drawable;

.field private mLightOnDrawable:Landroid/graphics/drawable/Drawable;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateModeSet:Z

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mRebootTextView:Landroid/widget/TextView;

.field private mRebootlLayout:Landroid/widget/LinearLayout;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenImageView:Landroid/widget/ImageView;

.field private mScreenLayout:Landroid/widget/LinearLayout;

.field private mSelectorAirplane:Landroid/graphics/drawable/Drawable;

.field private mSelectorAirplane_other:Landroid/graphics/drawable/Drawable;

.field private mSelectorVibrator:Landroid/graphics/drawable/Drawable;

.field private mSelectorVibrator_other:Landroid/graphics/drawable/Drawable;

.field private mSelectorVolume:Landroid/graphics/drawable/Drawable;

.field private mSelectorVolume_other:Landroid/graphics/drawable/Drawable;

.field private mSeletorCall:Landroid/graphics/drawable/Drawable;

.field private mSeletorCall_other:Landroid/graphics/drawable/Drawable;

.field private mSeletorScreen:Landroid/graphics/drawable/Drawable;

.field private mSeletorScreen_other:Landroid/graphics/drawable/Drawable;

.field private mSilentModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mVitravorImageView:Landroid/widget/ImageView;

.field private mVitravorLayout:Landroid/widget/LinearLayout;

.field private mVolumeImageView:Landroid/widget/ImageView;

.field private mVolumeLayout:Landroid/widget/LinearLayout;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private screen_img_light:Landroid/widget/ImageView;

.field private vibrator_img_light:Landroid/widget/ImageView;

.field private volume_img_light:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 6
    .parameter "context"
    .parameter "windowManagerFuncs"

    .prologue
    const/4 v4, 0x0

    .line 183
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    .line 89
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    .line 90
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 91
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    .line 140
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateModeSet:Z

    .line 146
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandlerPhone:Landroid/os/Handler;

    .line 157
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$2;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandlerSetting:Landroid/os/Handler;

    .line 169
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$3;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 789
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$7;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$7;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 816
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$8;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$8;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 829
    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$9;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$9;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 184
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    .line 185
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 186
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 190
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, filterSetting:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    new-instance v3, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandlerPhone:Landroid/os/Handler;

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 204
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 205
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 208
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 210
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 213
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108039a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 216
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080399

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 219
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108029a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorVolume:Landroid/graphics/drawable/Drawable;

    .line 222
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108029b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorVolume_other:Landroid/graphics/drawable/Drawable;

    .line 225
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080296

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorVibrator:Landroid/graphics/drawable/Drawable;

    .line 227
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080297

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorVibrator_other:Landroid/graphics/drawable/Drawable;

    .line 230
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080298

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSeletorScreen:Landroid/graphics/drawable/Drawable;

    .line 232
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080299

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSeletorScreen_other:Landroid/graphics/drawable/Drawable;

    .line 236
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080292

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorAirplane:Landroid/graphics/drawable/Drawable;

    .line 239
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080293

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorAirplane_other:Landroid/graphics/drawable/Drawable;

    .line 243
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080294

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSeletorCall:Landroid/graphics/drawable/Drawable;

    .line 244
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080295

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSeletorCall_other:Landroid/graphics/drawable/Drawable;

    .line 247
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->onPhoneModeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->updateState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandlerSetting:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/GlobalActions;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 843
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 845
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 846
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 847
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 848
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 850
    if-eqz p1, :cond_1

    .line 851
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->airplane_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 857
    :goto_1
    return-void

    .line 843
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 854
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->airplane_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private changeMobileModeSystemSetting(Z)V
    .locals 6
    .parameter "on"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 860
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "disable_mobile_radio"

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 863
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SWITCH_MOBILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 864
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "switchOn"

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 865
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 867
    if-eqz p1, :cond_2

    .line 868
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->call_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 873
    :goto_2
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    move v1, v3

    .line 860
    goto :goto_0

    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    move v2, v3

    .line 864
    goto :goto_1

    .line 871
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->call_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private createDialog()Landroid/app/AlertDialog;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 360
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$4;

    const v2, 0x1080450

    const v3, 0x1080031

    const v4, 0x104018d

    const v5, 0x104018e

    const v6, 0x104018f

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/GlobalActions$4;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 396
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$5;

    const v2, 0x10803bf

    const v3, 0x10803c0

    const v4, 0x1040190

    const v5, 0x1040191

    const v6, 0x1040192

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/GlobalActions$5;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 436
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/android/internal/policy/impl/GlobalActions$Action;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v3, v2, v9

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$6;

    const v5, 0x1080030

    const v6, 0x104018c

    invoke-direct {v4, p0, v5, v6}, Lcom/android/internal/policy/impl/GlobalActions$6;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    .line 462
    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-direct {v2, p0, v10}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$1;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    .line 464
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 469
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const v3, 0x109003c

    invoke-static {v2, v3, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, layout:Landroid/view/View;
    move v2, v9

    move v3, v9

    move v4, v9

    move v5, v9

    .line 471
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 473
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 476
    .local v7, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 477
    .local v8, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, -0x13

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 478
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 486
    invoke-virtual {v7, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 499
    return-object v7
.end method

.method static getPhoneInterface()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 981
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneStatus()Z
    .locals 4

    .prologue
    .line 967
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 968
    .local v1, isOffHook:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->getPhoneInterface()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 969
    .local v2, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 971
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 977
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 972
    :catch_0
    move-exception v0

    .line 973
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getVibrateValue()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1079
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_when_ringing"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1082
    .local v0, vibeWhenRinging:Z
    :goto_0
    return v0

    .line 1079
    .end local v0           #vibeWhenRinging:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1102
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onPhoneModeChanged()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1060
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 1061
    .local v1, serviceState:Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    move v0, v2

    .line 1063
    .local v0, mobileRadioEnabled:Z
    :goto_0
    if-nez v0, :cond_2

    .line 1064
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateModeSet:Z

    .line 1068
    :cond_0
    if-eqz v0, :cond_3

    .line 1070
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCallImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSeletorCall_other:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1071
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->call_img_light:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1076
    :goto_1
    return-void

    .line 1061
    .end local v0           #mobileRadioEnabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1065
    .restart local v0       #mobileRadioEnabled:Z
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateModeSet:Z

    if-nez v2, :cond_0

    goto :goto_1

    .line 1073
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCallImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSeletorCall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1074
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->call_img_light:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private prepareDialog()V
    .locals 3

    .prologue
    .line 503
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 504
    .local v0, silentModeOn:Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 506
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 507
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 508
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    if-eqz v1, :cond_2

    .line 509
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 515
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x3f19999a

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 516
    return-void

    .line 503
    .end local v0           #silentModeOn:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 504
    .restart local v0       #silentModeOn:Z
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_1

    .line 512
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_2
.end method

.method private prepareVolume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 913
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->updateState()V

    .line 925
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 927
    .local v0, isAirplaneOn:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 928
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorAirplane_other:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 929
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->airplane_img_light:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 936
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "disable_mobile_radio"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 938
    .local v1, isEnableCall:Z
    :goto_2
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateModeSet:Z

    if-nez v4, :cond_4

    if-nez v1, :cond_4

    .line 940
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCallImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 941
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->call_img_light:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 943
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCallImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSeletorCall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 944
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->call_img_light:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 957
    :goto_3
    if-eqz v0, :cond_0

    .line 958
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCallImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSeletorCall_other:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 959
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->call_img_light:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 962
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRebootTextView:Landroid/widget/TextView;

    const v3, 0x1040574

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 963
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCloseTextView:Landroid/widget/TextView;

    const v3, 0x104018c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 964
    return-void

    .end local v0           #isAirplaneOn:Z
    .end local v1           #isEnableCall:Z
    :cond_1
    move v0, v3

    .line 925
    goto :goto_0

    .line 931
    .restart local v0       #isAirplaneOn:Z
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorAirplane:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 932
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->airplane_img_light:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    move v1, v3

    .line 936
    goto :goto_2

    .line 946
    .restart local v1       #isEnableCall:Z
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCallImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 947
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->call_img_light:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 948
    if-eqz v1, :cond_5

    .line 949
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCallImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSeletorCall_other:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 950
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->call_img_light:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 952
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCallImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSeletorCall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 953
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->call_img_light:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method private setPhoneVibrateSettingValue(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_when_ringing"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1099
    return-void

    .line 1096
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateState()V
    .locals 3

    .prologue
    .line 1114
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVitravorImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->vibrator_img_light:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1115
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getVibrateValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1116
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVitravorImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorVibrator_other:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1117
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->vibrator_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1123
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVolumeImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->volume_img_light:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 1125
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1126
    .local v0, silentModeOn:Z
    :goto_1
    if-eqz v0, :cond_4

    .line 1127
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVolumeImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorVolume_other:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1128
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->volume_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1135
    .end local v0           #silentModeOn:Z
    :cond_1
    :goto_2
    return-void

    .line 1119
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVitravorImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorVibrator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1120
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->vibrator_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1125
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1130
    .restart local v0       #silentModeOn:Z
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVolumeImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSelectorVolume:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1131
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->volume_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 351
    return-void
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method onAirplaneClick()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1038
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getPhoneStatus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1055
    :goto_0
    return-void

    .line 1040
    :cond_0
    const-string v4, "ril.cdma.inecmmode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1042
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    .line 1044
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1046
    .local v0, ecmDialogIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1047
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1049
    .end local v0           #ecmDialogIntent:Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 1052
    .local v1, flag:Z
    :goto_1
    if-nez v1, :cond_3

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    goto :goto_0

    .end local v1           #flag:Z
    :cond_2
    move v1, v3

    .line 1049
    goto :goto_1

    .restart local v1       #flag:Z
    :cond_3
    move v2, v3

    .line 1052
    goto :goto_2
.end method

.method onCallClick()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1025
    const-string v3, "ril.cdma.inecmmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isAirplaneModeOn()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getPhoneStatus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "disable_mobile_radio"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 1033
    .local v0, flag:Z
    :goto_1
    if-nez v0, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->changeMobileModeSystemSetting(Z)V

    goto :goto_0

    .end local v0           #flag:Z
    :cond_2
    move v0, v2

    .line 1030
    goto :goto_1

    .restart local v0       #flag:Z
    :cond_3
    move v1, v2

    .line 1033
    goto :goto_2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 525
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 526
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/GlobalActions$Action;->onPress()V

    .line 527
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 877
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 909
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 910
    return-void

    .line 880
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions;->onVolumeClick()V

    goto :goto_0

    .line 884
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reboot()V

    goto :goto_0

    .line 888
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown()V

    goto :goto_0

    .line 892
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions;->onVibratorClick()V

    goto :goto_0

    .line 900
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions;->onAirplaneClick()V

    goto :goto_0

    .line 904
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions;->onCallClick()V

    goto :goto_0

    .line 877
    nop

    :pswitch_data_0
    .packed-switch 0x102029e
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mStatusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 521
    return-void
.end method

.method onScreenClick()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1011
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 1014
    .local v0, flag:Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation"

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1017
    if-eqz v0, :cond_2

    .line 1018
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->screen_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1022
    :goto_2
    return-void

    .end local v0           #flag:Z
    :cond_0
    move v0, v2

    .line 1011
    goto :goto_0

    .restart local v0       #flag:Z
    :cond_1
    move v2, v1

    .line 1014
    goto :goto_1

    .line 1020
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->screen_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method onVibratorClick()V
    .locals 2

    .prologue
    .line 999
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getVibrateValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->vibrator_img_light:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1001
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions;->setPhoneVibrateSettingValue(Ljava/lang/Boolean;)V

    .line 1007
    :goto_0
    return-void

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->vibrator_img_light:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1005
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions;->setPhoneVibrateSettingValue(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method onVolumeClick()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 986
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 987
    .local v0, silentModeOn:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 988
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 989
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->volume_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 996
    :goto_1
    return-void

    .end local v0           #silentModeOn:Z
    :cond_0
    move v0, v1

    .line 986
    goto :goto_0

    .line 992
    .restart local v0       #silentModeOn:Z
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 993
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->volume_img_light:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLightOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public showDialog(ZZ)V
    .locals 5
    .parameter "keyguardShowing"
    .parameter "isDeviceProvisioned"

    .prologue
    const/4 v4, 0x0

    .line 256
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    .line 257
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    .line 258
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mStatusBar:Landroid/app/StatusBarManager;

    .line 261
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    .line 263
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->prepareDialog()V

    .line 265
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 266
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 267
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x1020281

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 269
    .local v0, customPanel:Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 270
    .local v1, lParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x2cc

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 271
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 272
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 273
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    if-eqz v0, :cond_1

    .line 275
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080528

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 279
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202a2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVolumeLayout:Landroid/widget/LinearLayout;

    .line 281
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202a0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRebootlLayout:Landroid/widget/LinearLayout;

    .line 283
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x102029e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCloseLayout:Landroid/widget/LinearLayout;

    .line 286
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202a8

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneLayout:Landroid/widget/LinearLayout;

    .line 289
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202ab

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCallLayout:Landroid/widget/LinearLayout;

    .line 292
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202a3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVolumeImageView:Landroid/widget/ImageView;

    .line 299
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202a1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRebootTextView:Landroid/widget/TextView;

    .line 301
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x102029f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCloseTextView:Landroid/widget/TextView;

    .line 304
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202a5

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVitravorLayout:Landroid/widget/LinearLayout;

    .line 309
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202a6

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVitravorImageView:Landroid/widget/ImageView;

    .line 314
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202a4

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->volume_img_light:Landroid/widget/ImageView;

    .line 317
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202a9

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneImageView:Landroid/widget/ImageView;

    .line 319
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202ac

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCallImageView:Landroid/widget/ImageView;

    .line 322
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202a7

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->vibrator_img_light:Landroid/widget/ImageView;

    .line 328
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202aa

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->airplane_img_light:Landroid/widget/ImageView;

    .line 330
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    const v3, 0x10202ad

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->call_img_light:Landroid/widget/ImageView;

    .line 333
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVolumeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRebootlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCloseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mVitravorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->prepareVolume()V

    .line 343
    return-void
.end method
