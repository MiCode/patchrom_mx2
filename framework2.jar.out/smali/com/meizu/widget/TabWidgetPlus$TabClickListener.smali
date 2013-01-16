.class Lcom/meizu/widget/TabWidgetPlus$TabClickListener;
.super Ljava/lang/Object;
.source "TabWidgetPlus.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/TabWidgetPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field private final mTabIndex:I

.field final synthetic this$0:Lcom/meizu/widget/TabWidgetPlus;


# direct methods
.method private constructor <init>(Lcom/meizu/widget/TabWidgetPlus;I)V
    .locals 0
    .parameter
    .parameter "tabIndex"

    .prologue
    .line 371
    iput-object p1, p0, Lcom/meizu/widget/TabWidgetPlus$TabClickListener;->this$0:Lcom/meizu/widget/TabWidgetPlus;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput p2, p0, Lcom/meizu/widget/TabWidgetPlus$TabClickListener;->mTabIndex:I

    .line 373
    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/widget/TabWidgetPlus;ILcom/meizu/widget/TabWidgetPlus$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 367
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/TabWidgetPlus$TabClickListener;-><init>(Lcom/meizu/widget/TabWidgetPlus;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/meizu/widget/TabWidgetPlus$TabClickListener;->this$0:Lcom/meizu/widget/TabWidgetPlus;

    #getter for: Lcom/meizu/widget/TabWidgetPlus;->mSelectionChangedListener:Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;
    invoke-static {v0}, Lcom/meizu/widget/TabWidgetPlus;->access$100(Lcom/meizu/widget/TabWidgetPlus;)Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;

    move-result-object v0

    iget v1, p0, Lcom/meizu/widget/TabWidgetPlus$TabClickListener;->mTabIndex:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 377
    return-void
.end method
