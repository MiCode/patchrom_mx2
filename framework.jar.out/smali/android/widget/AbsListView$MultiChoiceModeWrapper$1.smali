.class Landroid/widget/AbsListView$MultiChoiceModeWrapper$1;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/view/ActionMode$OnActionItemDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/AbsListView$MultiChoiceModeWrapper;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView$MultiChoiceModeWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 6810
    iput-object p1, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper$1;->this$1:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/DragEvent;Landroid/view/MenuItem;)V
    .locals 1
    .parameter "event"
    .parameter "menuItem"

    .prologue
    .line 6812
    iget-object v0, p0, Landroid/widget/AbsListView$MultiChoiceModeWrapper$1;->this$1:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v0, v0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->doActionItemDrag(Landroid/view/DragEvent;Landroid/view/MenuItem;)V
    invoke-static {v0, p1, p2}, Landroid/widget/AbsListView;->access$3900(Landroid/widget/AbsListView;Landroid/view/DragEvent;Landroid/view/MenuItem;)V

    .line 6813
    return-void
.end method
