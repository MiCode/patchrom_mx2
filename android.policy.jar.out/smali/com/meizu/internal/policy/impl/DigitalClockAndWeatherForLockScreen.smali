.class public Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;
.super Landroid/widget/LinearLayout;
.source "DigitalClockAndWeatherForLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$FormatChangeObserver;,
        Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$AmPm;
    }
.end annotation


# static fields
.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"


# instance fields
.field private clockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private linearLayout:Landroid/widget/LinearLayout;

.field private mAmPm:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$AmPm;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mDateBox:Landroid/view/View;

.field private mDateFormatString:Ljava/lang/String;

.field private mDateWeekTextView:Landroid/widget/TextView;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLive:Z

.field private mTempCTextView:Landroid/widget/TextView;

.field private mWeatherImageView:Landroid/widget/ImageView;

.field private mWeekFormatString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mLive:Z

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$1;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$1;-><init>(Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->setDateFormat()V

    return-void
.end method

.method private addImageViewToClock()V
    .locals 3

    .prologue
    .line 258
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 259
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 260
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_0
    return-void
.end method

.method private setClockImageList(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "newTime"

    .prologue
    .line 265
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 266
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 267
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 321
    :goto_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 322
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 265
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :pswitch_0
    if-nez v0, :cond_1

    .line 270
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    :goto_2
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 272
    :cond_1
    const v2, 0x108080a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 277
    :pswitch_1
    const v2, 0x108080b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 278
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 281
    :pswitch_2
    const v2, 0x108080c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 282
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 285
    :pswitch_3
    const v2, 0x108080d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 286
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 289
    :pswitch_4
    const v2, 0x108080e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 290
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 293
    :pswitch_5
    const v2, 0x108080f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 294
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 297
    :pswitch_6
    const v2, 0x1080810

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 298
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 301
    :pswitch_7
    const v2, 0x1080811

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 302
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 305
    :pswitch_8
    const v2, 0x1080812

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 306
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 309
    :pswitch_9
    const v2, 0x1080813

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 310
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 313
    :pswitch_a
    const v2, 0x1080814

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 314
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 325
    .end local v1           #imageView:Landroid/widget/ImageView;
    :cond_2
    return-void

    .line 267
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private setDateFormat()V
    .locals 3

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mFormat:Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mAmPm:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$AmPm;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mFormat:Ljava/lang/String;

    const-string v2, "h:mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$AmPm;->setShowAmPm(Z)V

    .line 330
    return-void

    .line 328
    :cond_0
    const-string v0, "h:mm"

    goto :goto_0
.end method

.method private updateTime()V
    .locals 5

    .prologue
    .line 243
    iget-boolean v2, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mLive:Z

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 246
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    .line 247
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mFormat:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 248
    .local v0, newTime:Ljava/lang/CharSequence;
    invoke-direct {p0, v0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->setClockImageList(Ljava/lang/CharSequence;)V

    .line 249
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->addImageViewToClock()V

    .line 251
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mWeekFormatString:Ljava/lang/String;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, tempString:Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mDateWeekTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mDateFormatString:Ljava/lang/String;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mTempCTextView:Landroid/widget/TextView;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mAmPm:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$AmPm;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$AmPm;->setIsMorning(Z)V

    .line 255
    return-void

    .line 254
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 173
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 175
    iget-boolean v1, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mAttached:Z

    if-eqz v1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 177
    :cond_0
    iput-boolean v4, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mAttached:Z

    .line 179
    iget-boolean v1, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mLive:Z

    if-eqz v1, :cond_1

    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 182
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    new-instance v1, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$FormatChangeObserver;-><init>(Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;)V

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 194
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 197
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->updateTime()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 227
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mAttached:Z

    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mAttached:Z

    .line 231
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mLive:Z

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 155
    const v0, 0x102033c

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->linearLayout:Landroid/widget/LinearLayout;

    .line 156
    const v0, 0x1020340

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mDateWeekTextView:Landroid/widget/TextView;

    .line 157
    const v0, 0x102033f

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mTempCTextView:Landroid/widget/TextView;

    .line 158
    const v0, 0x1020341

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mWeatherImageView:Landroid/widget/ImageView;

    .line 159
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10400b7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mDateFormatString:Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10400b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mWeekFormatString:Ljava/lang/String;

    .line 161
    const v0, 0x102033d

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mDateBox:Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mDateBox:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$AmPm;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-direct {v0, p0, v1}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$AmPm;-><init>(Landroid/view/View;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mAmPm:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$AmPm;

    .line 165
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mCalendar:Ljava/util/Calendar;

    .line 166
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mTempCTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mWeatherImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->setDateFormat()V

    .line 170
    return-void
.end method

.method public setAlpha(I)V
    .locals 6
    .parameter "alpha"

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, child:Landroid/widget/ImageView;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 339
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #child:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 340
    .restart local v0       #child:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 341
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 342
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 338
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 346
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mDateWeekTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 347
    .local v1, colorStateList:Landroid/content/res/ColorStateList;
    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 348
    .local v4, newColorStateList:Landroid/content/res/ColorStateList;
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mDateWeekTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 349
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mTempCTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 350
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mAmPm:Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$AmPm;

    invoke-virtual {v5, v4}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$AmPm;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 351
    return-void
.end method

.method public setDateBoxOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mDateBox:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    return-void
.end method

.method public setDateBoxVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 354
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mDateBox:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 355
    return-void

    .line 354
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method setLive(Z)V
    .locals 0
    .parameter "live"

    .prologue
    .line 333
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mLive:Z

    .line 334
    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->mCalendar:Ljava/util/Calendar;

    .line 239
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;->updateTime()V

    .line 240
    return-void
.end method
