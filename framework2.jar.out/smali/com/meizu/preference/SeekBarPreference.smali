.class public Lcom/meizu/preference/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"


# instance fields
.field protected mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const v0, 0x10900bb

    invoke-virtual {p0, v0}, Lcom/meizu/preference/SeekBarPreference;->setLayoutResource(I)V

    .line 25
    return-void
.end method


# virtual methods
.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/meizu/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 30
    const v0, 0x102039c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/meizu/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 33
    return-void
.end method
