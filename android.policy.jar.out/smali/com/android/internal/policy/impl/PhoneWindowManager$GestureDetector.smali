.class Lcom/android/internal/policy/impl/PhoneWindowManager$GestureDetector;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GestureDetector"
.end annotation


# static fields
.field static final BACK_REGION:I = 0x0

.field static final MENU_REGION:I = 0x1

.field static final OTHER_REGION:I = 0x2

.field static final UNKOWN_REGION:I = -0x1

.field static mGestureRegion:I

.field static mLastFocusX:F

.field static mLastFocusY:F

.field static mRotation:I

.field private static scrolled:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static divideGestureRegion(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/MotionEvent;)V
    .locals 12
    .parameter "manager"
    .parameter "ev"

    .prologue
    const/4 v11, 0x2

    const/high16 v6, 0x4448

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 209
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 210
    .local v3, focusX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 211
    .local v4, focusY:F
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 213
    :pswitch_0
    sput v3, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureDetector;->mLastFocusX:F

    .line 214
    sput v4, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureDetector;->mLastFocusY:F

    .line 215
    const/4 v5, -0x1

    sput v5, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureDetector;->mGestureRegion:I

    .line 216
    sput-boolean v9, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureDetector;->scrolled:Z

    .line 219
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v5}, Landroid/view/IWindowManager;->getRotation()I

    move-result v5

    sput v5, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureDetector;->mRotation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v1

    .line 222
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 227
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_1
    sget-boolean v5, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureDetector;->scrolled:Z

    if-eqz v5, :cond_0

    .line 228
    sput-boolean v9, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureDetector;->scrolled:Z

    .line 229
    const/4 v2, 0x0

    .line 230
    .local v2, focus:F
    sget v5, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureDetector;->mRotation:I

    if-nez v5, :cond_2

    .line 231
    move v2, v3

    .line 240
    :cond_1
    :goto_1
    float-to-double v5, v2

    const-wide v7, 0x4072c00000000000L

    cmpg-double v5, v5, v7

    if-gez v5, :cond_5

    .line 241
    sput v9, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureDetector;->mGestureRegion:I

    goto :goto_0

    .line 232
    :cond_2
    sget v5, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureDetector;->mRotation:I

    if-ne v5, v10, :cond_3

    .line 233
    sub-float v2, v6, v4

    goto :goto_1

    .line 234
    :cond_3
    sget v5, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureDetector;->mRotation:I

    if-ne v5, v11, :cond_4

    .line 235
    sub-float v2, v6, v3

    goto :goto_1

    .line 236
    :cond_4
    sget v5, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureDetector;->mRotation:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 237
    move v2, v4

    goto :goto_1

    .line 242
    :cond_5
    float-to-double v5, v2

    const-wide v7, 0x407f400000000000L

    cmpl-double v5, v5, v7

    if-lez v5, :cond_6

    .line 243
    sput v10, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureDetector;->mGestureRegion:I

    goto :goto_0

    .line 245
    :cond_6
    sput v11, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureDetector;->mGestureRegion:I

    goto :goto_0

    .line 250
    .end local v2           #focus:F
    :pswitch_2
    sput-boolean v10, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureDetector;->scrolled:Z

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
