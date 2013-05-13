.class public Lcom/meizu/widget/CheckedTwoLineListItem;
.super Landroid/widget/LinearLayout;
.source "CheckedTwoLineListItem.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mCheckButton:Landroid/widget/CompoundButton;

.field private mChecked:Z

.field private mTextView1:Landroid/widget/TextView;

.field private mTextView2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/CheckedTwoLineListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/CheckedTwoLineListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const v0, 0x1090038

    invoke-static {p1, v0, p0}, Lcom/meizu/widget/CheckedTwoLineListItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/meizu/widget/CheckedTwoLineListItem;->mChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/meizu/widget/CheckedTwoLineListItem;->mChecked:Z

    .line 63
    const v0, 0x1020001

    invoke-virtual {p0, v0}, Lcom/meizu/widget/CheckedTwoLineListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/meizu/widget/CheckedTwoLineListItem;->mCheckButton:Landroid/widget/CompoundButton;

    .line 64
    iget-object v0, p0, Lcom/meizu/widget/CheckedTwoLineListItem;->mCheckButton:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/meizu/widget/CheckedTwoLineListItem;->mCheckButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 67
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/meizu/widget/CheckedTwoLineListItem;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/meizu/widget/CheckedTwoLineListItem;->setChecked(Z)V

    .line 72
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
