.class Landroid/widget/Editor$OptionWrapper;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionWrapper"
.end annotation


# instance fields
.field private final kSelectionModeOffset:I

.field private mClipRectF:Landroid/graphics/RectF;

.field private mPopup:Lcom/meizu/widget/OptionPopupWindow;

.field private mTmpRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 2
    .parameter

    .prologue
    .line 4217
    iput-object p1, p0, Landroid/widget/Editor$OptionWrapper;->this$0:Landroid/widget/Editor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4214
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/Editor$OptionWrapper;->mTmpRect:Landroid/graphics/Rect;

    .line 4215
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/widget/Editor$OptionWrapper;->mClipRectF:Landroid/graphics/RectF;

    .line 4218
    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 4219
    .local v0, density:F
    const/high16 v1, 0x4200

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$OptionWrapper;->kSelectionModeOffset:I

    .line 4220
    return-void
.end method

.method private update(Landroid/graphics/Rect;)Z
    .locals 3
    .parameter "target"

    .prologue
    .line 4262
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_1

    .line 4265
    :cond_0
    const/4 v0, 0x0

    .line 4271
    :goto_0
    return v0

    .line 4267
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4268
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 4269
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mClipRectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Landroid/widget/Editor$OptionWrapper;->kSelectionModeOffset:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 4271
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$OptionWrapper;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$OptionWrapper;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/widget/OptionPopupWindow;->showOptions(Landroid/view/View;Landroid/graphics/RectF;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public hide()Z
    .locals 1

    .prologue
    .line 4255
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    invoke-virtual {v0}, Lcom/meizu/widget/OptionPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4256
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    invoke-virtual {v0}, Lcom/meizu/widget/OptionPopupWindow;->dismiss()V

    .line 4258
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 4229
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 4230
    return-void
.end method

.method public show()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4242
    iget-object v2, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    if-nez v2, :cond_0

    .line 4251
    :goto_0
    return v0

    .line 4246
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    invoke-virtual {v2}, Lcom/meizu/widget/OptionPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 4247
    goto :goto_0

    .line 4249
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor$OptionWrapper;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v2}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 4250
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$OptionWrapper;->mTmpRect:Landroid/graphics/Rect;

    #calls: Landroid/widget/Editor;->getActiveBound(Landroid/graphics/Rect;Z)V
    invoke-static {v0, v2, v1}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;Landroid/graphics/Rect;Z)V

    .line 4251
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroid/widget/Editor$OptionWrapper;->update(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .parameter "cb"

    .prologue
    .line 4233
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    if-nez v0, :cond_0

    .line 4234
    new-instance v0, Lcom/meizu/widget/OptionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$OptionWrapper;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/widget/OptionPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    .line 4235
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    invoke-virtual {v0, p0}, Lcom/meizu/widget/OptionPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 4238
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mPopup:Lcom/meizu/widget/OptionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$OptionWrapper;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/meizu/widget/OptionPopupWindow;->startPopupActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public updatePosition(IIZZ)V
    .locals 3
    .parameter "parentPositionX"
    .parameter "parentPositionY"
    .parameter "parentPositionChanged"
    .parameter "parentScrolled"

    .prologue
    .line 4224
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$OptionWrapper;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    #calls: Landroid/widget/Editor;->getActiveBound(Landroid/graphics/Rect;Z)V
    invoke-static {v0, v1, v2}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;Landroid/graphics/Rect;Z)V

    .line 4225
    iget-object v0, p0, Landroid/widget/Editor$OptionWrapper;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroid/widget/Editor$OptionWrapper;->update(Landroid/graphics/Rect;)Z

    .line 4226
    return-void
.end method
