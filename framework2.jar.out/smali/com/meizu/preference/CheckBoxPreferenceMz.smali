.class public Lcom/meizu/preference/CheckBoxPreferenceMz;
.super Landroid/preference/CheckBoxPreference;
.source "CheckBoxPreferenceMz.java"


# instance fields
.field private mTextLayout:Landroid/view/View;

.field private mTextLayoutClickListener:Landroid/view/View$OnClickListener;

.field private mTextLayoutEnabled:Z

.field private mWidgetFrame:Landroid/view/View;

.field private mWidgetFrameEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/preference/CheckBoxPreferenceMz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/preference/CheckBoxPreferenceMz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x1

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-boolean v0, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    .line 29
    iput-boolean v0, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mWidgetFrameEnabled:Z

    .line 44
    const v0, 0x10900ab

    invoke-virtual {p0, v0}, Lcom/meizu/preference/CheckBoxPreferenceMz;->setLayoutResource(I)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/preference/CheckBoxPreferenceMz;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/meizu/preference/CheckBoxPreferenceMz;->performClick()V

    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "enabled"

    .prologue
    .line 112
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 114
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 115
    check-cast v1, Landroid/view/ViewGroup;

    .line 116
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 117
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/meizu/preference/CheckBoxPreferenceMz;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 116
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 120
    .end local v0           #i:I
    .end local v1           #vg:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method


# virtual methods
.method public isTextLayoutEnabled()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    return v0
.end method

.method public isWidgetFrameEnabled()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mWidgetFrameEnabled:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 71
    invoke-virtual {p0}, Lcom/meizu/preference/CheckBoxPreferenceMz;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    iget-boolean v1, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    invoke-direct {p0, v0, v1}, Lcom/meizu/preference/CheckBoxPreferenceMz;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/preference/CheckBoxPreferenceMz;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mWidgetFrameEnabled:Z

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mWidgetFrame:Landroid/view/View;

    iget-boolean v1, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mWidgetFrameEnabled:Z

    invoke-direct {p0, v0, v1}, Lcom/meizu/preference/CheckBoxPreferenceMz;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 78
    :cond_1
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "parent"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, layout:Landroid/view/View;
    const v1, 0x1020393

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    .line 52
    iget-object v1, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mTextLayoutClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mTextLayoutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    :cond_0
    const v1, 0x1020018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mWidgetFrame:Landroid/view/View;

    .line 57
    iget-object v1, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mWidgetFrame:Landroid/view/View;

    new-instance v2, Lcom/meizu/preference/CheckBoxPreferenceMz$1;

    invoke-direct {v2, p0}, Lcom/meizu/preference/CheckBoxPreferenceMz$1;-><init>(Lcom/meizu/preference/CheckBoxPreferenceMz;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-object v0
.end method

.method public setTextLayoutClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mTextLayoutClickListener:Landroid/view/View$OnClickListener;

    .line 125
    iget-object v0, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    :cond_0
    return-void
.end method

.method public setTextLayoutEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    if-eq v0, p1, :cond_0

    .line 82
    iput-boolean p1, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mTextLayoutEnabled:Z

    .line 84
    iget-object v0, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mTextLayout:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/meizu/preference/CheckBoxPreferenceMz;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 88
    :cond_0
    return-void
.end method

.method public setWidgetFrameEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mWidgetFrameEnabled:Z

    if-eq v0, p1, :cond_0

    .line 96
    iput-boolean p1, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mWidgetFrameEnabled:Z

    .line 98
    iget-object v0, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mWidgetFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/meizu/preference/CheckBoxPreferenceMz;->mWidgetFrame:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/meizu/preference/CheckBoxPreferenceMz;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 102
    :cond_0
    return-void
.end method
