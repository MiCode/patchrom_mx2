.class Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;
.super Ljava/lang/Object;
.source "LockEmergencyCallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockEmergencyCallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mCall:Landroid/widget/TextView;

.field private mDelete:Landroid/widget/TextView;

.field private mEight:Landroid/widget/TextView;

.field private mFive:Landroid/widget/TextView;

.field private mFour:Landroid/widget/TextView;

.field private mNine:Landroid/widget/TextView;

.field private mOne:Landroid/widget/TextView;

.field private mPound:Landroid/widget/TextView;

.field private mSeven:Landroid/widget/TextView;

.field private mSix:Landroid/widget/TextView;

.field private mStar:Landroid/widget/TextView;

.field private mThree:Landroid/widget/TextView;

.field private mTwo:Landroid/widget/TextView;

.field private mUnlock:Landroid/widget/TextView;

.field private mZero:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;


# direct methods
.method private constructor <init>(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)V
    .locals 1
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->this$0:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const v0, 0x10202d5

    invoke-virtual {p1, v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mStar:Landroid/widget/TextView;

    .line 179
    const v0, 0x10202d7

    invoke-virtual {p1, v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mPound:Landroid/widget/TextView;

    .line 180
    const v0, 0x10202d6

    invoke-virtual {p1, v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mZero:Landroid/widget/TextView;

    .line 181
    const v0, 0x10202cc

    invoke-virtual {p1, v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mOne:Landroid/widget/TextView;

    .line 182
    const v0, 0x10202cd

    invoke-virtual {p1, v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 183
    const v0, 0x10202ce

    invoke-virtual {p1, v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mThree:Landroid/widget/TextView;

    .line 184
    const v0, 0x10202cf

    invoke-virtual {p1, v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mFour:Landroid/widget/TextView;

    .line 185
    const v0, 0x10202d0

    invoke-virtual {p1, v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mFive:Landroid/widget/TextView;

    .line 186
    const v0, 0x10202d1

    invoke-virtual {p1, v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mSix:Landroid/widget/TextView;

    .line 187
    const v0, 0x10202d2

    invoke-virtual {p1, v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 188
    const v0, 0x10202d3

    invoke-virtual {p1, v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mEight:Landroid/widget/TextView;

    .line 189
    const v0, 0x10202d4

    invoke-virtual {p1, v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mNine:Landroid/widget/TextView;

    .line 190
    const v0, 0x10202d8

    invoke-virtual {p1, v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mUnlock:Landroid/widget/TextView;

    .line 191
    const v0, 0x10202d9

    invoke-virtual {p1, v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mCall:Landroid/widget/TextView;

    .line 192
    const v0, 0x1020221

    invoke-virtual {p1, v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mDelete:Landroid/widget/TextView;

    .line 194
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mStar:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mPound:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mUnlock:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mCall:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mDelete:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mDelete:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 211
    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;Lcom/meizu/internal/policy/impl/LockEmergencyCallView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;-><init>(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .parameter "v"

    .prologue
    .line 279
    const-string v0, "delete"

    .line 280
    .local v0, digit:Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 281
    const-string v0, "0"

    .line 305
    :cond_0
    :goto_0
    return-object v0

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 283
    const-string v0, "1"

    goto :goto_0

    .line 284
    :cond_2
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 285
    const-string v0, "2"

    goto :goto_0

    .line 286
    :cond_3
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 287
    const-string v0, "3"

    goto :goto_0

    .line 288
    :cond_4
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 289
    const-string v0, "4"

    goto :goto_0

    .line 290
    :cond_5
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 291
    const-string v0, "5"

    goto :goto_0

    .line 292
    :cond_6
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 293
    const-string v0, "6"

    goto :goto_0

    .line 294
    :cond_7
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    .line 295
    const-string v0, "7"

    goto :goto_0

    .line 296
    :cond_8
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    .line 297
    const-string v0, "8"

    goto :goto_0

    .line 298
    :cond_9
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_a

    .line 299
    const-string v0, "9"

    goto :goto_0

    .line 300
    :cond_a
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mStar:Landroid/widget/TextView;

    if-ne p1, v1, :cond_b

    .line 301
    const-string v0, "*"

    goto :goto_0

    .line 302
    :cond_b
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mPound:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 303
    const-string v0, "#"

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 214
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mDelete:Landroid/widget/TextView;

    if-ne p1, v6, :cond_2

    .line 215
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->this$0:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    const-string v7, "delete"

    #calls: Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->reportDigit(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->access$300(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;Ljava/lang/String;)V

    .line 255
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->this$0:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    #getter for: Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mIKeyguardWidget:Lcom/meizu/internal/policy/impl/ILockWidget;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->access$900(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)Lcom/meizu/internal/policy/impl/ILockWidget;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 256
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->this$0:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    #getter for: Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mIKeyguardWidget:Lcom/meizu/internal/policy/impl/ILockWidget;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->access$900(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)Lcom/meizu/internal/policy/impl/ILockWidget;

    move-result-object v6

    invoke-interface {v6}, Lcom/meizu/internal/policy/impl/ILockWidget;->onTouchScreen()V

    .line 258
    :cond_1
    return-void

    .line 216
    :cond_2
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mCall:Landroid/widget/TextView;

    if-ne p1, v6, :cond_4

    .line 217
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->this$0:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    #getter for: Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mIsCalling:Z
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->access$100(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 220
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->this$0:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    #getter for: Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mTvCallNum:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->access$400(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, callNum:Ljava/lang/String;
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->this$0:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    #getter for: Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->access$500(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    .line 222
    .local v3, isEmergencyNum:Z
    if-eqz v3, :cond_3

    .line 224
    :try_start_0
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 226
    .local v2, iPhone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 227
    invoke-interface {v2, v0}, Lcom/android/internal/telephony/ITelephony;->initEmergencyCall(Ljava/lang/String;)I

    move-result v4

    .line 228
    .local v4, result:I
    if-nez v4, :cond_0

    .line 229
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->this$0:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    const/4 v7, 0x1

    #setter for: Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mIsCalling:Z
    invoke-static {v6, v7}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->access$102(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;Z)Z

    .line 230
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->this$0:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    #calls: Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->updateView()V
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->access$200(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    .end local v2           #iPhone:Lcom/android/internal/telephony/ITelephony;
    .end local v4           #result:I
    :catch_0
    move-exception v6

    goto :goto_0

    .line 238
    :cond_3
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->this$0:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    #getter for: Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->access$600(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->this$0:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    #getter for: Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->access$700(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x1040578

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 240
    .local v5, toast:Landroid/widget/Toast;
    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setType(I)V

    .line 241
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 245
    .end local v0           #callNum:Ljava/lang/String;
    .end local v3           #isEmergencyNum:Z
    .end local v5           #toast:Landroid/widget/Toast;
    :cond_4
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mUnlock:Landroid/widget/TextView;

    if-ne p1, v6, :cond_5

    .line 246
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->this$0:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    #getter for: Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mOnReturnButtonClickListener:Lcom/meizu/internal/policy/impl/LockEmergencyCallView$OnReturnButtonClickListener;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->access$800(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)Lcom/meizu/internal/policy/impl/LockEmergencyCallView$OnReturnButtonClickListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 247
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->this$0:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    #getter for: Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mOnReturnButtonClickListener:Lcom/meizu/internal/policy/impl/LockEmergencyCallView$OnReturnButtonClickListener;
    invoke-static {v6}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->access$800(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)Lcom/meizu/internal/policy/impl/LockEmergencyCallView$OnReturnButtonClickListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$OnReturnButtonClickListener;->onReturnButtonClick()V

    goto/16 :goto_0

    .line 250
    :cond_5
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->checkDigit(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, digit:Ljava/lang/String;
    const-string v6, "delete"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 252
    iget-object v6, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->this$0:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    #calls: Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->reportDigit(Ljava/lang/String;)V
    invoke-static {v6, v1}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->access$300(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->mDelete:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->this$0:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->clearText()V

    .line 270
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->this$0:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    #getter for: Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mIKeyguardWidget:Lcom/meizu/internal/policy/impl/ILockWidget;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->access$900(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)Lcom/meizu/internal/policy/impl/ILockWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockEmergencyCallView$TouchInput;->this$0:Lcom/meizu/internal/policy/impl/LockEmergencyCallView;

    #getter for: Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->mIKeyguardWidget:Lcom/meizu/internal/policy/impl/ILockWidget;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockEmergencyCallView;->access$900(Lcom/meizu/internal/policy/impl/LockEmergencyCallView;)Lcom/meizu/internal/policy/impl/ILockWidget;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/internal/policy/impl/ILockWidget;->onTouchScreen()V

    goto :goto_0
.end method
