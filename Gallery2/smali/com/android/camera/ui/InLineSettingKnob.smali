.class public Lcom/android/camera/ui/InLineSettingKnob;
.super Lcom/android/camera/ui/InLineSettingItem;
.source "InLineSettingKnob.java"


# instance fields
.field private mEntry:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mNext:Z

.field private mNextButton:Landroid/widget/Button;

.field mNextTouchListener:Landroid/view/View$OnTouchListener;

.field private mPrevButton:Landroid/widget/Button;

.field private mPrevious:Z

.field mPreviousTouchListener:Landroid/view/View$OnTouchListener;

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/InLineSettingItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Lcom/android/camera/ui/InLineSettingKnob$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/InLineSettingKnob$1;-><init>(Lcom/android/camera/ui/InLineSettingKnob;)V

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingKnob;->mRunnable:Ljava/lang/Runnable;

    .line 61
    new-instance v0, Lcom/android/camera/ui/InLineSettingKnob$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/InLineSettingKnob$2;-><init>(Lcom/android/camera/ui/InLineSettingKnob;)V

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingKnob;->mNextTouchListener:Landroid/view/View$OnTouchListener;

    .line 79
    new-instance v0, Lcom/android/camera/ui/InLineSettingKnob$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/InLineSettingKnob$3;-><init>(Lcom/android/camera/ui/InLineSettingKnob;)V

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingKnob;->mPreviousTouchListener:Landroid/view/View$OnTouchListener;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingKnob;->mHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/InLineSettingKnob;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/camera/ui/InLineSettingKnob;->mNext:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/InLineSettingKnob;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/camera/ui/InLineSettingKnob;->mNext:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/InLineSettingKnob;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingKnob;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/InLineSettingKnob;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/camera/ui/InLineSettingKnob;->mPrevious:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/ui/InLineSettingKnob;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/camera/ui/InLineSettingKnob;->mPrevious:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/ui/InLineSettingKnob;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingKnob;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/InLineSettingKnob;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/camera/ui/InLineSettingItem;->onFinishInflate()V

    .line 100
    const v0, 0x7f0d0092

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/InLineSettingKnob;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingKnob;->mNextButton:Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingKnob;->mNextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingKnob;->mNextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    const v0, 0x7f0d0090

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/InLineSettingKnob;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingKnob;->mPrevButton:Landroid/widget/Button;

    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingKnob;->mPrevButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingKnob;->mPreviousTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    const v0, 0x7f0d0091

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/InLineSettingKnob;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingKnob;->mEntry:Landroid/widget/TextView;

    .line 105
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/android/camera/ui/InLineSettingItem;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 147
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method

.method protected updateView()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 119
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mOverrideValue:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 120
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingKnob;->mEntry:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v4, p0, Lcom/android/camera/ui/InLineSettingKnob;->mNextButton:Landroid/widget/Button;

    iget v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mIndex:I

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingKnob;->mPrevButton:Landroid/widget/Button;

    iget v4, p0, Lcom/android/camera/ui/InLineSettingItem;->mIndex:I

    iget-object v5, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v5}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 136
    :goto_2
    return-void

    :cond_0
    move v1, v3

    .line 121
    goto :goto_0

    :cond_1
    move v2, v3

    .line 122
    goto :goto_1

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingItem;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 126
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 127
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingKnob;->mEntry:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :goto_3
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingKnob;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingKnob;->mPrevButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 130
    :cond_3
    const-string v1, "InLineSettingKnob"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to find override value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/InLineSettingItem;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->print()V

    goto :goto_3
.end method
