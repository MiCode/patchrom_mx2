.class public Landroid/widget/ExpandableListViewMz$ExpandableListContextMenuInfo;
.super Ljava/lang/Object;
.source "ExpandableListViewMz.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ExpandableListViewMz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandableListContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public packedPosition:J

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;JJ)V
    .locals 0
    .parameter "targetView"
    .parameter "packedPosition"
    .parameter "id"

    .prologue
    .line 1632
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1633
    iput-object p1, p0, Landroid/widget/ExpandableListViewMz$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    .line 1634
    iput-wide p2, p0, Landroid/widget/ExpandableListViewMz$ExpandableListContextMenuInfo;->packedPosition:J

    .line 1635
    iput-wide p4, p0, Landroid/widget/ExpandableListViewMz$ExpandableListContextMenuInfo;->id:J

    .line 1636
    return-void
.end method
