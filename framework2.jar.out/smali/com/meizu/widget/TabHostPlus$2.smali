.class Lcom/meizu/widget/TabHostPlus$2;
.super Ljava/lang/Object;
.source "TabHostPlus.java"

# interfaces
.implements Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/widget/TabHostPlus;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/TabHostPlus;


# direct methods
.method constructor <init>(Lcom/meizu/widget/TabHostPlus;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/meizu/widget/TabHostPlus$2;->this$0:Lcom/meizu/widget/TabHostPlus;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelectionChanged(IZ)V
    .locals 2
    .parameter "tabIndex"
    .parameter "clicked"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$2;->this$0:Lcom/meizu/widget/TabHostPlus;

    iget v0, v0, Lcom/meizu/widget/TabHostPlus;->mCurrentTab:I

    if-ne p1, v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$2;->this$0:Lcom/meizu/widget/TabHostPlus;

    invoke-virtual {v0}, Lcom/meizu/widget/TabHostPlus;->setCurrentTop()V

    .line 169
    :goto_0
    if-eqz p2, :cond_0

    .line 170
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$2;->this$0:Lcom/meizu/widget/TabHostPlus;

    #getter for: Lcom/meizu/widget/TabHostPlus;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/meizu/widget/TabHostPlus;->access$100(Lcom/meizu/widget/TabHostPlus;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$2;->this$0:Lcom/meizu/widget/TabHostPlus;

    #getter for: Lcom/meizu/widget/TabHostPlus;->mTabSeledtionListener:Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;
    invoke-static {v0}, Lcom/meizu/widget/TabHostPlus;->access$200(Lcom/meizu/widget/TabHostPlus;)Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$2;->this$0:Lcom/meizu/widget/TabHostPlus;

    #getter for: Lcom/meizu/widget/TabHostPlus;->mTabSeledtionListener:Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;
    invoke-static {v0}, Lcom/meizu/widget/TabHostPlus;->access$200(Lcom/meizu/widget/TabHostPlus;)Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 175
    :cond_1
    return-void

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$2;->this$0:Lcom/meizu/widget/TabHostPlus;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/TabHostPlus;->setCurrentTab(I)V

    goto :goto_0
.end method
