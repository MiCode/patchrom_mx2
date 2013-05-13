.class Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$AmPm;
.super Ljava/lang/Object;
.source "DigitalClockAndWeatherForLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mPmString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/Typeface;)V
    .locals 2
    .parameter "parent"
    .parameter "tf"

    .prologue
    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const v1, 0x102033a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$AmPm;->mAmPm:Landroid/widget/TextView;

    .line 109
    if-eqz p2, :cond_0

    .line 110
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$AmPm;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    :cond_0
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, ampm:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$AmPm;->mAmString:Ljava/lang/String;

    .line 115
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$AmPm;->mPmString:Ljava/lang/String;

    .line 116
    return-void
.end method


# virtual methods
.method setIsMorning(Z)V
    .locals 2
    .parameter "isMorning"

    .prologue
    .line 123
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$AmPm;->mAmString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$AmPm;->mPmString:Ljava/lang/String;

    goto :goto_0
.end method

.method setShowAmPm(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    return-void

    .line 119
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter "newColorStateList"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/DigitalClockAndWeatherForLockScreen$AmPm;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 128
    return-void
.end method
