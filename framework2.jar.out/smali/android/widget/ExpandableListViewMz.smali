.class public Landroid/widget/ExpandableListViewMz;
.super Landroid/widget/ListView;
.source "ExpandableListViewMz.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ExpandableListViewMz$1;,
        Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;,
        Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;,
        Landroid/widget/ExpandableListViewMz$PackedPosition;,
        Landroid/widget/ExpandableListViewMz$SavedState;,
        Landroid/widget/ExpandableListViewMz$ExpandableListContextMenuInfo;,
        Landroid/widget/ExpandableListViewMz$scrollActionOnGroupExpand;,
        Landroid/widget/ExpandableListViewMz$onChildCheckListener;,
        Landroid/widget/ExpandableListViewMz$onGroupCheckListener;,
        Landroid/widget/ExpandableListViewMz$OnChildClickListener;,
        Landroid/widget/ExpandableListViewMz$OnGroupClickListener;,
        Landroid/widget/ExpandableListViewMz$OnGroupExpandListener;,
        Landroid/widget/ExpandableListViewMz$OnGroupCollapseListener;
    }
.end annotation


# static fields
.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I = null

.field private static final EMPTY_STATE_SET:[I = null

.field private static final GROUP_EMPTY_STATE_SET:[I = null

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I = null

.field private static final GROUP_EXPANDED_STATE_SET:[I = null

.field private static final GROUP_STATE_SETS:[[I = null

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mChildCheckListener:Landroid/widget/ExpandableListViewMz$onChildCheckListener;

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

.field private mGroupCheckListener:Landroid/widget/ExpandableListViewMz$onGroupCheckListener;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mIndicatorLeft:I

.field private final mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorRight:I

.field private mLongPressPosition:I

.field private mMultiChoiceEnable:Z

.field private mOnChildClickListener:Landroid/widget/ExpandableListViewMz$OnChildClickListener;

.field private mOnGroupClickListener:Landroid/widget/ExpandableListViewMz$OnGroupClickListener;

.field private mOnGroupCollapseListener:Landroid/widget/ExpandableListViewMz$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Landroid/widget/ExpandableListViewMz$OnGroupExpandListener;

.field private mPackedCheckStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPackedCheckedItemCount:I

.field private mScrollActionOnGroupExpand:Landroid/widget/ExpandableListViewMz$scrollActionOnGroupExpand;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    new-array v0, v3, [I

    sput-object v0, Landroid/widget/ExpandableListViewMz;->EMPTY_STATE_SET:[I

    .line 171
    new-array v0, v4, [I

    const v1, 0x10100a8

    aput v1, v0, v3

    sput-object v0, Landroid/widget/ExpandableListViewMz;->GROUP_EXPANDED_STATE_SET:[I

    .line 175
    new-array v0, v4, [I

    const v1, 0x10100a9

    aput v1, v0, v3

    sput-object v0, Landroid/widget/ExpandableListViewMz;->GROUP_EMPTY_STATE_SET:[I

    .line 179
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/ExpandableListViewMz;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 183
    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, Landroid/widget/ExpandableListViewMz;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/ExpandableListViewMz;->GROUP_EXPANDED_STATE_SET:[I

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/ExpandableListViewMz;->GROUP_EMPTY_STATE_SET:[I

    aput-object v1, v0, v2

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ExpandableListViewMz;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    aput-object v2, v0, v1

    sput-object v0, Landroid/widget/ExpandableListViewMz;->GROUP_STATE_SETS:[[I

    .line 191
    new-array v0, v4, [I

    const v1, 0x10100a6

    aput v1, v0, v3

    sput-object v0, Landroid/widget/ExpandableListViewMz;->CHILD_LAST_STATE_SET:[I

    return-void

    .line 179
    :array_0
    .array-data 0x4
        0xa8t 0x0t 0x1t 0x1t
        0xa9t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ExpandableListViewMz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 212
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ExpandableListViewMz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 216
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 200
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ExpandableListViewMz;->mIndicatorRect:Landroid/graphics/Rect;

    .line 218
    sget-object v1, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 222
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ExpandableListViewMz;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 224
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ExpandableListViewMz;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 226
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListViewMz;->mIndicatorLeft:I

    .line 228
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListViewMz;->mIndicatorRight:I

    .line 230
    iget v1, p0, Landroid/widget/ExpandableListViewMz;->mIndicatorRight:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 231
    iget v1, p0, Landroid/widget/ExpandableListViewMz;->mIndicatorLeft:I

    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/ExpandableListViewMz;->mIndicatorRight:I

    .line 233
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListViewMz;->mChildIndicatorLeft:I

    .line 235
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListViewMz;->mChildIndicatorRight:I

    .line 237
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ExpandableListViewMz;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 239
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 240
    return-void
.end method

.method private ArrayListToArray(Ljava/util/ArrayList;)[J
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 1508
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1509
    const/4 v1, 0x0

    .line 1517
    :cond_0
    return-object v1

    .line 1512
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1513
    .local v2, size:I
    new-array v1, v2, [J

    .line 1514
    .local v1, result:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1515
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v0

    .line 1514
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getAbsoluteFlatPosition(I)I
    .locals 1
    .parameter "flatListPosition"

    .prologue
    .line 559
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J
    .locals 3
    .parameter "position"

    .prologue
    .line 1167
    iget v0, p1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1168
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v2, p1, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 1170
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getFlatPositionForConnector(I)I
    .locals 1
    .parameter "flatListPosition"

    .prologue
    .line 548
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "pos"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 363
    iget-object v7, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v7, v7, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v7, v6, :cond_5

    .line 364
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 366
    .local v0, indicator:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 370
    iget-object v7, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-eqz v7, :cond_0

    iget-object v7, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v7, v7, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v8, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v8, v8, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v7, v8, :cond_3

    :cond_0
    move v1, v5

    .line 373
    .local v1, isEmpty:Z
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_1
    if-eqz v1, :cond_1

    move v4, v6

    :cond_1
    or-int v3, v5, v4

    .line 376
    .local v3, stateSetIndex:I
    sget-object v4, Landroid/widget/ExpandableListViewMz;->GROUP_STATE_SETS:[[I

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 390
    .end local v1           #isEmpty:Z
    .end local v3           #stateSetIndex:I
    :cond_2
    :goto_2
    return-object v0

    :cond_3
    move v1, v4

    .line 370
    goto :goto_0

    .restart local v1       #isEmpty:Z
    :cond_4
    move v5, v4

    .line 373
    goto :goto_1

    .line 379
    .end local v0           #indicator:Landroid/graphics/drawable/Drawable;
    .end local v1           #isEmpty:Z
    :cond_5
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 381
    .restart local v0       #indicator:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 383
    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->flatListPos:I

    iget-object v5, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v5, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v4, v5, :cond_6

    sget-object v2, Landroid/widget/ExpandableListViewMz;->CHILD_LAST_STATE_SET:[I

    .line 386
    .local v2, stateSet:[I
    :goto_3
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2

    .line 383
    .end local v2           #stateSet:[I
    :cond_6
    sget-object v2, Landroid/widget/ExpandableListViewMz;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method public static getPackedPositionChild(J)I
    .locals 7
    .parameter "packedPosition"

    .prologue
    const-wide v5, 0xffffffffL

    const-wide/high16 v3, -0x8000

    const/4 v0, -0x1

    .line 1095
    cmp-long v1, p0, v5

    if-nez v1, :cond_1

    .line 1100
    :cond_0
    :goto_0
    return v0

    .line 1098
    :cond_1
    and-long v1, p0, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1100
    and-long v0, p0, v5

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 6
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 1120
    const-wide/high16 v0, -0x8000

    int-to-long v2, p0

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .locals 4
    .parameter "groupPosition"

    .prologue
    .line 1135
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .locals 3
    .parameter "packedPosition"

    .prologue
    .line 1076
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 1078
    :goto_0
    return v0

    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionType(J)I
    .locals 4
    .parameter "packedPosition"

    .prologue
    const-wide/high16 v2, -0x8000

    .line 1056
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1057
    const/4 v0, 0x2

    .line 1060
    :goto_0
    return v0

    :cond_0
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 536
    iget v1, p0, Landroid/widget/ExpandableListViewMz;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getFooterViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    .line 537
    .local v0, footerViewsStart:I
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateFlatCheckStates()V
    .locals 6

    .prologue
    .line 1423
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-nez v4, :cond_0

    .line 1440
    :goto_0
    return-void

    .line 1426
    :cond_0
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v4, :cond_1

    .line 1427
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, p0, Landroid/widget/ExpandableListViewMz;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1429
    :cond_1
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1431
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v4, p0, Landroid/widget/ExpandableListViewMz;->mItemCount:I

    if-ge v1, v4, :cond_3

    .line 1432
    invoke-virtual {p0, v1}, Landroid/widget/ExpandableListViewMz;->getExpandableListPosition(I)J

    move-result-wide v2

    .line 1433
    .local v2, packedPos:J
    invoke-virtual {p0, v2, v3}, Landroid/widget/ExpandableListViewMz;->isPackedPositionChecked(J)Z

    move-result v0

    .line 1434
    .local v0, checked:Z
    if-eqz v0, :cond_2

    .line 1435
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1431
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1439
    .end local v0           #checked:Z
    .end local v2           #packedPos:J
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public checkedAll()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 1238
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getItemsCount()I

    move-result v6

    .line 1239
    .local v6, total:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 1240
    invoke-virtual {p0, v1}, Landroid/widget/ExpandableListViewMz;->getPackedPositionFromUnpackListPosition(I)Landroid/widget/ExpandableListViewMz$PackedPosition;

    move-result-object v4

    .line 1242
    .local v4, packedPosition:Landroid/widget/ExpandableListViewMz$PackedPosition;
    iget v7, v4, Landroid/widget/ExpandableListViewMz$PackedPosition;->childPosition:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 1243
    iget v7, v4, Landroid/widget/ExpandableListViewMz$PackedPosition;->groupPosition:I

    invoke-static {v7}, Landroid/widget/ExpandableListViewMz;->getPackedPositionForGroup(I)J

    move-result-wide v2

    .line 1248
    .local v2, packedPos:J
    :goto_1
    invoke-virtual {p0, v2, v3, v11}, Landroid/widget/ExpandableListViewMz;->setPackedPositionChecked(JZ)V

    .line 1239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1245
    .end local v2           #packedPos:J
    :cond_0
    iget v7, v4, Landroid/widget/ExpandableListViewMz$PackedPosition;->groupPosition:I

    iget v8, v4, Landroid/widget/ExpandableListViewMz$PackedPosition;->childPosition:I

    invoke-static {v7, v8}, Landroid/widget/ExpandableListViewMz;->getPackedPositionForChild(II)J

    move-result-wide v2

    .restart local v2       #packedPos:J
    goto :goto_1

    .line 1252
    .end local v2           #packedPos:J
    .end local v4           #packedPosition:Landroid/widget/ExpandableListViewMz$PackedPosition;
    :cond_1
    iget v7, p0, Landroid/widget/ExpandableListViewMz;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getHeaderViewsCount()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getFooterViewsCount()I

    move-result v8

    sub-int v0, v7, v8

    .line 1253
    .local v0, availableItem:I
    invoke-super {p0}, Landroid/widget/ListView;->clearChoices()V

    .line 1254
    iget v7, p0, Landroid/widget/ExpandableListViewMz;->mChoiceMode:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_3

    .line 1255
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getHeaderViewsCount()I

    move-result v5

    .local v5, position:I
    :goto_2
    if-gt v5, v0, :cond_3

    .line 1256
    iget-object v7, p0, Landroid/widget/ExpandableListViewMz;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v5, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1257
    iget-object v7, p0, Landroid/widget/ExpandableListViewMz;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v7}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1258
    iget-object v7, p0, Landroid/widget/ExpandableListViewMz;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v8, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v8, v5}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getItemId(I)J

    move-result-wide v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1260
    :cond_2
    iget v7, p0, Landroid/widget/ExpandableListViewMz;->mCheckedItemCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/widget/ExpandableListViewMz;->mCheckedItemCount:I

    .line 1255
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1263
    .end local v5           #position:I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->requestLayout()V

    .line 1264
    return-void
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1339
    invoke-super {p0}, Landroid/widget/ListView;->clearChoices()V

    .line 1341
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    .line 1342
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1345
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckedItemCount:I

    .line 1346
    return-void
.end method

.method public collapseGroup(I)Z
    .locals 2
    .parameter "groupPos"

    .prologue
    .line 729
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v1, p1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->collapseGroup(I)Z

    move-result v0

    .line 731
    .local v0, retValue:Z
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupCollapseListener:Landroid/widget/ExpandableListViewMz$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    .line 732
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupCollapseListener:Landroid/widget/ExpandableListViewMz$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Landroid/widget/ExpandableListViewMz$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 735
    :cond_0
    return v0
.end method

.method confirmCheckedPositionsById()V
    .locals 0

    .prologue
    .line 1281
    invoke-super {p0}, Landroid/widget/ListView;->confirmCheckedPositionsById()V

    .line 1282
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 9
    .parameter "view"
    .parameter "flatListPosition"
    .parameter "id"

    .prologue
    .line 1141
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListViewMz;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 1155
    :goto_0
    return-object v0

    .line 1146
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListViewMz;->getFlatPositionForConnector(I)I

    move-result v6

    .line 1147
    .local v6, adjustedPosition:I
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v0, v6}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v7

    .line 1148
    .local v7, pm:Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v8, v7, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 1149
    .local v8, pos:Landroid/widget/ExpandableListPosition;
    invoke-virtual {v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1151
    invoke-direct {p0, v8}, Landroid/widget/ExpandableListViewMz;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide p3

    .line 1152
    invoke-virtual {v8}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 1153
    .local v2, packedPosition:J
    invoke-virtual {v8}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 1155
    new-instance v0, Landroid/widget/ExpandableListViewMz$ExpandableListContextMenuInfo;

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ExpandableListViewMz$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 27
    .parameter "canvas"

    .prologue
    .line 246
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListViewMz;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListViewMz;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    const/16 v18, 0x0

    .line 254
    .local v18, saveCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x22

    const/16 v23, 0x22

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    const/4 v8, 0x1

    .line 255
    .local v8, clipToPadding:Z
    :goto_1
    if-eqz v8, :cond_2

    .line 256
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v18

    .line 257
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mScrollX:I

    move/from16 v19, v0

    .line 258
    .local v19, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mScrollY:I

    move/from16 v20, v0

    .line 259
    .local v20, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mPaddingLeft:I

    move/from16 v22, v0

    add-int v22, v22, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mPaddingTop:I

    move/from16 v23, v0

    add-int v23, v23, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mRight:I

    move/from16 v24, v0

    add-int v24, v24, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mPaddingRight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mBottom:I

    move/from16 v25, v0

    add-int v25, v25, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mPaddingBottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 264
    .end local v19           #scrollX:I
    .end local v20           #scrollY:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListViewMz;->getHeaderViewsCount()I

    move-result v9

    .line 266
    .local v9, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mItemCount:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListViewMz;->getFooterViewsCount()I

    move-result v23

    sub-int v22, v22, v23

    sub-int v22, v22, v9

    add-int/lit8 v14, v22, -0x1

    .line 268
    .local v14, lastChildFlPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mBottom:I

    move/from16 v16, v0

    .line 276
    .local v16, myB:I
    const/4 v15, -0x4

    .line 278
    .local v15, lastItemType:I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/ExpandableListViewMz;->mIndicatorRect:Landroid/graphics/Rect;

    .line 283
    .local v12, indicatorRect:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListViewMz;->getChildCount()I

    move-result v6

    .line 284
    .local v6, childCount:I
    const/4 v10, 0x0

    .local v10, i:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v7, v22, v9

    .local v7, childFlPos:I
    :goto_2
    if-ge v10, v6, :cond_6

    .line 287
    if-gez v7, :cond_5

    .line 285
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 254
    .end local v6           #childCount:I
    .end local v7           #childFlPos:I
    .end local v8           #clipToPadding:Z
    .end local v9           #headerViewsCount:I
    .end local v10           #i:I
    .end local v12           #indicatorRect:Landroid/graphics/Rect;
    .end local v14           #lastChildFlPos:I
    .end local v15           #lastItemType:I
    .end local v16           #myB:I
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 290
    .restart local v6       #childCount:I
    .restart local v7       #childFlPos:I
    .restart local v8       #clipToPadding:Z
    .restart local v9       #headerViewsCount:I
    .restart local v10       #i:I
    .restart local v12       #indicatorRect:Landroid/graphics/Rect;
    .restart local v14       #lastChildFlPos:I
    .restart local v15       #lastItemType:I
    .restart local v16       #myB:I
    :cond_5
    if-le v7, v14, :cond_7

    .line 347
    :cond_6
    if-eqz v8, :cond_0

    .line 348
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 295
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ExpandableListViewMz;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 296
    .local v13, item:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v21

    .line 297
    .local v21, t:I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 300
    .local v5, b:I
    if-ltz v5, :cond_3

    move/from16 v0, v21

    move/from16 v1, v16

    if-gt v0, v1, :cond_3

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v17

    .line 307
    .local v17, pos:Landroid/widget/ExpandableListConnector$PositionMetadata;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v15, :cond_8

    .line 308
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 309
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mChildIndicatorLeft:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mIndicatorLeft:I

    move/from16 v22, v0

    :goto_4
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 311
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mChildIndicatorRight:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mIndicatorRight:I

    move/from16 v22, v0

    :goto_5
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 318
    :goto_6
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mPaddingLeft:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 319
    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mPaddingLeft:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 321
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v15, v0, Landroid/widget/ExpandableListPosition;->type:I

    .line 324
    :cond_8
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    .line 326
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ExpandableListViewMz;->mStackFromBottom:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 328
    move/from16 v0, v21

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 329
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    .line 336
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/widget/ExpandableListViewMz;->getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 337
    .local v11, indicator:Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_9

    .line 339
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 340
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 344
    .end local v11           #indicator:Landroid/graphics/drawable/Drawable;
    :cond_9
    invoke-virtual/range {v17 .. v17}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto/16 :goto_3

    .line 309
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mChildIndicatorLeft:I

    move/from16 v22, v0

    goto :goto_4

    .line 311
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mChildIndicatorRight:I

    move/from16 v22, v0

    goto :goto_5

    .line 314
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mIndicatorLeft:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 315
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mIndicatorRight:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    goto :goto_6

    .line 331
    :cond_d
    move/from16 v0, v21

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 332
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    goto :goto_7
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 6
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 422
    iget v4, p0, Landroid/widget/ExpandableListViewMz;->mFirstPosition:I

    add-int v2, p3, v4

    .line 426
    .local v2, flatListPosition:I
    if-ltz v2, :cond_2

    .line 427
    invoke-direct {p0, v2}, Landroid/widget/ExpandableListViewMz;->getFlatPositionForConnector(I)I

    move-result v0

    .line 428
    .local v0, adjustedPosition:I
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v4, v0}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v3

    .line 430
    .local v3, pos:Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v4, v3, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v4, v4, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v5, v3, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v5, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v4, v5, :cond_1

    .line 433
    :cond_0
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 434
    .local v1, divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 435
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 436
    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 444
    .end local v0           #adjustedPosition:I
    .end local v1           #divider:Landroid/graphics/drawable/Drawable;
    .end local v3           #pos:Landroid/widget/ExpandableListConnector$PositionMetadata;
    :goto_0
    return-void

    .line 439
    .restart local v0       #adjustedPosition:I
    .restart local v3       #pos:Landroid/widget/ExpandableListConnector$PositionMetadata;
    :cond_1
    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 443
    .end local v0           #adjustedPosition:I
    .end local v3           #pos:Landroid/widget/ExpandableListConnector$PositionMetadata;
    :cond_2
    invoke-super {p0, p1, p2, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_0
.end method

.method public expandGroup(I)Z
    .locals 1
    .parameter "groupPos"

    .prologue
    .line 689
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ExpandableListViewMz;->expandGroup(IZ)Z

    move-result v0

    return v0
.end method

.method public expandGroup(IZ)Z
    .locals 7
    .parameter "groupPos"
    .parameter "animate"

    .prologue
    const/4 v6, -0x1

    .line 701
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    const/4 v5, 0x2

    invoke-static {v5, p1, v6, v6}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 703
    .local v1, pm:Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v4, v1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 705
    .local v2, retValue:Z
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupExpandListener:Landroid/widget/ExpandableListViewMz$OnGroupExpandListener;

    if-eqz v4, :cond_0

    .line 706
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupExpandListener:Landroid/widget/ExpandableListViewMz$OnGroupExpandListener;

    invoke-interface {v4, p1}, Landroid/widget/ExpandableListViewMz$OnGroupExpandListener;->onGroupExpand(I)V

    .line 709
    :cond_0
    if-eqz p2, :cond_1

    .line 710
    iget-object v4, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v4, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 712
    .local v0, groupFlatPos:I
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getHeaderViewsCount()I

    move-result v4

    add-int v3, v0, v4

    .line 713
    .local v3, shiftedGroupPosition:I
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4, v3}, Landroid/widget/ExpandableListViewMz;->smoothScrollToPosition(II)V

    .line 716
    .end local v0           #groupFlatPos:I
    .end local v3           #shiftedGroupPosition:I
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 718
    return v2
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 469
    invoke-super {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getCheckChildrenItems()[J
    .locals 7

    .prologue
    .line 1491
    iget-object v6, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-nez v6, :cond_0

    .line 1492
    const/4 v6, 0x0

    .line 1503
    :goto_0
    return-object v6

    .line 1494
    :cond_0
    iget-object v6, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    .line 1495
    .local v4, size:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1496
    .local v0, checked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 1497
    iget-object v6, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 1498
    .local v2, pos:J
    invoke-static {v2, v3}, Landroid/widget/ExpandableListViewMz;->getPackedPositionType(J)I

    move-result v5

    .line 1499
    .local v5, type:I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1500
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1496
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1503
    .end local v2           #pos:J
    .end local v5           #type:I
    :cond_2
    invoke-direct {p0, v0}, Landroid/widget/ExpandableListViewMz;->ArrayListToArray(Ljava/util/ArrayList;)[J

    move-result-object v6

    goto :goto_0
.end method

.method public getCheckGroupItems()[J
    .locals 7

    .prologue
    .line 1471
    iget-object v6, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-nez v6, :cond_0

    .line 1472
    const/4 v6, 0x0

    .line 1483
    :goto_0
    return-object v6

    .line 1474
    :cond_0
    iget-object v6, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    .line 1475
    .local v4, size:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1476
    .local v0, checked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 1477
    iget-object v6, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 1478
    .local v2, pos:J
    invoke-static {v2, v3}, Landroid/widget/ExpandableListViewMz;->getPackedPositionType(J)I

    move-result v5

    .line 1479
    .local v5, type:I
    if-nez v5, :cond_1

    .line 1480
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1476
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1483
    .end local v2           #pos:J
    .end local v5           #type:I
    :cond_2
    invoke-direct {p0, v0}, Landroid/widget/ExpandableListViewMz;->ArrayListToArray(Ljava/util/ArrayList;)[J

    move-result-object v6

    goto :goto_0
.end method

.method public getCheckItemsCountForAll()I
    .locals 1

    .prologue
    .line 1524
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1525
    const/4 v0, 0x0

    .line 1527
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getCheckItemsCountForChildren()I
    .locals 7

    .prologue
    .line 1555
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-nez v5, :cond_1

    .line 1556
    const/4 v0, 0x0

    .line 1567
    :cond_0
    return v0

    .line 1558
    :cond_1
    const/4 v0, 0x0

    .line 1559
    .local v0, cnt:I
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .line 1560
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1561
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1562
    .local v2, pos:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/widget/ExpandableListViewMz;->getPackedPositionType(J)I

    move-result v4

    .line 1563
    .local v4, type:I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1564
    add-int/lit8 v0, v0, 0x1

    .line 1560
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckItemsCountForGroup()I
    .locals 7

    .prologue
    .line 1535
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-nez v5, :cond_1

    .line 1536
    const/4 v0, 0x0

    .line 1547
    :cond_0
    return v0

    .line 1538
    :cond_1
    const/4 v0, 0x0

    .line 1539
    .local v0, cnt:I
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .line 1540
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1541
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1542
    .local v2, pos:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/widget/ExpandableListViewMz;->getPackedPositionType(J)I

    move-result v4

    .line 1543
    .local v4, type:I
    if-nez v4, :cond_2

    .line 1544
    add-int/lit8 v0, v0, 0x1

    .line 1540
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1290
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 1

    .prologue
    .line 1269
    invoke-super {p0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1275
    invoke-super {p0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedItems()[J
    .locals 6

    .prologue
    .line 1454
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-nez v5, :cond_1

    .line 1455
    const/4 v0, 0x0

    .line 1463
    :cond_0
    return-object v0

    .line 1457
    :cond_1
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    .line 1458
    .local v4, size:I
    new-array v0, v4, [J

    .line 1459
    .local v0, checked:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 1460
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 1461
    .local v2, pos:J
    aput-wide v2, v0, v1

    .line 1459
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 5
    .parameter "flatListPosition"

    .prologue
    .line 841
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListViewMz;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 842
    const-wide v1, 0xffffffffL

    .line 849
    :goto_0
    return-wide v1

    .line 845
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListViewMz;->getFlatPositionForConnector(I)I

    move-result v0

    .line 846
    .local v0, adjustedPosition:I
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v4, v0}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v3

    .line 847
    .local v3, pm:Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v4, v3, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-virtual {v4}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v1

    .line 848
    .local v1, packedPos:J
    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method

.method public getFlatListPosition(J)I
    .locals 4
    .parameter "packedPosition"

    .prologue
    .line 864
    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainPosition(J)Landroid/widget/ExpandableListPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 866
    .local v1, pm:Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v2, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v2, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 867
    .local v0, flatListPosition:I
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 868
    invoke-direct {p0, v0}, Landroid/widget/ExpandableListViewMz;->getAbsoluteFlatPosition(I)I

    move-result v2

    return v2
.end method

.method public getItemsCount()I
    .locals 4

    .prologue
    .line 477
    iget-object v3, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v3, :cond_1

    .line 478
    const/4 v0, 0x0

    .line 488
    :cond_0
    return v0

    .line 481
    :cond_1
    const/4 v0, 0x0

    .line 483
    .local v0, count:I
    iget-object v3, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    .line 484
    .local v1, groupCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 485
    iget-object v3, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v2}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getLongPressPosition()I
    .locals 1

    .prologue
    .line 1577
    iget v0, p0, Landroid/widget/ExpandableListViewMz;->mLongPressPosition:I

    return v0
.end method

.method public getPackedPositionFromUnpackListPosition(I)Landroid/widget/ExpandableListViewMz$PackedPosition;
    .locals 8
    .parameter "unPackListPosition"

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 917
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getItemsCount()I

    move-result v5

    if-lt p1, v5, :cond_1

    .line 940
    :cond_0
    :goto_0
    return-object v4

    .line 921
    :cond_1
    if-nez p1, :cond_2

    .line 922
    new-instance v4, Landroid/widget/ExpandableListViewMz$PackedPosition;

    invoke-direct {v4, v6, v7}, Landroid/widget/ExpandableListViewMz$PackedPosition;-><init>(II)V

    goto :goto_0

    .line 923
    :cond_2
    if-lez p1, :cond_3

    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v6}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    if-gt p1, v5, :cond_3

    .line 924
    add-int/lit8 v0, p1, -0x1

    .line 925
    .local v0, childPosition:I
    new-instance v4, Landroid/widget/ExpandableListViewMz$PackedPosition;

    invoke-direct {v4, v6, v0}, Landroid/widget/ExpandableListViewMz$PackedPosition;-><init>(II)V

    goto :goto_0

    .line 927
    .end local v0           #childPosition:I
    :cond_3
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v6}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 928
    .local v1, count:I
    const/4 v3, 0x1

    .local v3, i:I
    :goto_1
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 929
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v3}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v2

    .line 930
    .local v2, currentGroupChildrenCount:I
    if-gt v1, p1, :cond_5

    add-int v5, v1, v2

    if-gt p1, v5, :cond_5

    .line 931
    if-ne v1, p1, :cond_4

    .line 932
    new-instance v4, Landroid/widget/ExpandableListViewMz$PackedPosition;

    invoke-direct {v4, v3, v7}, Landroid/widget/ExpandableListViewMz$PackedPosition;-><init>(II)V

    goto :goto_0

    .line 934
    :cond_4
    sub-int v4, p1, v1

    add-int/lit8 v0, v4, -0x1

    .line 935
    .restart local v0       #childPosition:I
    new-instance v4, Landroid/widget/ExpandableListViewMz$PackedPosition;

    invoke-direct {v4, v3, v0}, Landroid/widget/ExpandableListViewMz$PackedPosition;-><init>(II)V

    goto :goto_0

    .line 938
    .end local v0           #childPosition:I
    :cond_5
    add-int/lit8 v5, v2, 0x1

    add-int/2addr v1, v5

    .line 928
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getSelectedId()J
    .locals 5

    .prologue
    .line 967
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getSelectedPosition()J

    move-result-wide v1

    .line 968
    .local v1, packedPos:J
    const-wide v3, 0xffffffffL

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-wide/16 v3, -0x1

    .line 977
    :goto_0
    return-wide v3

    .line 970
    :cond_0
    invoke-static {v1, v2}, Landroid/widget/ExpandableListViewMz;->getPackedPositionGroup(J)I

    move-result v0

    .line 972
    .local v0, groupPos:I
    invoke-static {v1, v2}, Landroid/widget/ExpandableListViewMz;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_1

    .line 974
    iget-object v3, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v3

    goto :goto_0

    .line 977
    :cond_1
    iget-object v3, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v1, v2}, Landroid/widget/ExpandableListViewMz;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v3, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    goto :goto_0
.end method

.method public getSelectedPosition()J
    .locals 3

    .prologue
    .line 953
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getSelectedItemPosition()I

    move-result v0

    .line 956
    .local v0, selectedPos:I
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListViewMz;->getExpandableListPosition(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public getUnpackListPosition(J)I
    .locals 7
    .parameter "packedPosition"

    .prologue
    const/4 v6, 0x1

    .line 878
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v5, :cond_1

    .line 879
    const/4 v1, -0x1

    .line 908
    :cond_0
    :goto_0
    return v1

    .line 882
    :cond_1
    invoke-static {p1, p2}, Landroid/widget/ExpandableListViewMz;->getPackedPositionGroup(J)I

    move-result v2

    .line 883
    .local v2, groupPosition:I
    invoke-static {p1, p2}, Landroid/widget/ExpandableListViewMz;->getPackedPositionChild(J)I

    move-result v0

    .line 885
    .local v0, childPosition:I
    const/4 v1, 0x0

    .line 886
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 887
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v3}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 888
    add-int/lit8 v1, v1, 0x1

    .line 886
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 891
    :cond_2
    invoke-static {p1, p2}, Landroid/widget/ExpandableListViewMz;->getPackedPositionType(J)I

    move-result v4

    .line 893
    .local v4, type:I
    if-nez v2, :cond_3

    .line 894
    if-ne v4, v6, :cond_5

    .line 895
    const/4 v1, 0x1

    .line 901
    :cond_3
    :goto_2
    if-ne v4, v6, :cond_0

    .line 902
    if-eqz v2, :cond_4

    .line 903
    add-int/lit8 v1, v1, 0x1

    .line 905
    :cond_4
    add-int/2addr v1, v0

    goto :goto_0

    .line 896
    :cond_5
    if-nez v4, :cond_3

    .line 897
    const/4 v1, 0x0

    goto :goto_2
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 12
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 616
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v9

    .line 618
    .local v9, posMetadata:Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v0, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-direct {p0, v0}, Landroid/widget/ExpandableListViewMz;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide p3

    .line 621
    iget-object v0, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 625
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupClickListener:Landroid/widget/ExpandableListViewMz$OnGroupClickListener;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupClickListener:Landroid/widget/ExpandableListViewMz$OnGroupClickListener;

    iget-object v1, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListViewMz$OnGroupClickListener;->onGroupClick(Landroid/widget/ExpandableListViewMz;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {v9}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 629
    const/4 v10, 0x1

    .line 678
    :goto_0
    return v10

    .line 633
    :cond_0
    invoke-virtual {v9}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 635
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v0, v9}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 637
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListViewMz;->playSoundEffect(I)V

    .line 639
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupCollapseListener:Landroid/widget/ExpandableListViewMz$OnGroupCollapseListener;

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupCollapseListener:Landroid/widget/ExpandableListViewMz$OnGroupCollapseListener;

    iget-object v1, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListViewMz$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 664
    :cond_1
    :goto_1
    const/4 v10, 0x1

    .line 676
    .local v10, returnValue:Z
    :goto_2
    invoke-virtual {v9}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0

    .line 644
    .end local v10           #returnValue:Z
    :cond_2
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v0, v9}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 646
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListViewMz;->playSoundEffect(I)V

    .line 648
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupExpandListener:Landroid/widget/ExpandableListViewMz$OnGroupExpandListener;

    if-eqz v0, :cond_3

    .line 649
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupExpandListener:Landroid/widget/ExpandableListViewMz$OnGroupExpandListener;

    iget-object v1, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListViewMz$OnGroupExpandListener;->onGroupExpand(I)V

    .line 652
    :cond_3
    iget-object v0, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v8, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 653
    .local v8, groupPos:I
    iget-object v0, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v7, v0, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 655
    .local v7, groupFlatPos:I
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getHeaderViewsCount()I

    move-result v0

    add-int v11, v7, v0

    .line 656
    .local v11, shiftedGroupPosition:I
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mScrollActionOnGroupExpand:Landroid/widget/ExpandableListViewMz$scrollActionOnGroupExpand;

    if-nez v0, :cond_4

    .line 657
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, v8}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {p0, v0, v11}, Landroid/widget/ExpandableListViewMz;->smoothScrollToPosition(II)V

    goto :goto_1

    .line 660
    :cond_4
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mScrollActionOnGroupExpand:Landroid/widget/ExpandableListViewMz$scrollActionOnGroupExpand;

    iget-object v1, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListViewMz$scrollActionOnGroupExpand;->scrollAfterGroupExpand(I)V

    goto :goto_1

    .line 667
    .end local v7           #groupFlatPos:I
    .end local v8           #groupPos:I
    .end local v11           #shiftedGroupPosition:I
    :cond_5
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mOnChildClickListener:Landroid/widget/ExpandableListViewMz$OnChildClickListener;

    if-eqz v0, :cond_6

    .line 668
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListViewMz;->playSoundEffect(I)V

    .line 669
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mOnChildClickListener:Landroid/widget/ExpandableListViewMz$OnChildClickListener;

    iget-object v1, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v1, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Landroid/widget/ExpandableListViewMz$OnChildClickListener;->onChildClick(Landroid/widget/ExpandableListViewMz;Landroid/view/View;IIJ)Z

    move-result v10

    goto :goto_0

    .line 673
    :cond_6
    const/4 v10, 0x0

    .restart local v10       #returnValue:Z
    goto :goto_2
.end method

.method public isGroupExpanded(I)Z
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 1043
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method protected isHeaderOrFooter(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, -0x1

    .line 1582
    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v2, v2, Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;

    if-eqz v2, :cond_1

    .line 1583
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;

    .line 1584
    .local v0, adaptermz:Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;
    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v2, p1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    iget-object v1, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 1585
    .local v1, pos:Landroid/widget/ExpandableListPosition;
    if-nez v1, :cond_0

    .line 1586
    invoke-interface {v0, p1, v3, v3}, Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;->isHeaderOrFooter(III)Z

    move-result v2

    .line 1591
    .end local v0           #adaptermz:Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;
    .end local v1           #pos:Landroid/widget/ExpandableListPosition;
    :goto_0
    return v2

    .line 1588
    .restart local v0       #adaptermz:Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;
    .restart local v1       #pos:Landroid/widget/ExpandableListPosition;
    :cond_0
    iget v2, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v3, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v0, p1, v2, v3}, Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;->isHeaderOrFooter(III)Z

    move-result v2

    goto :goto_0

    .line 1591
    .end local v0           #adaptermz:Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;
    .end local v1           #pos:Landroid/widget/ExpandableListPosition;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->isHeaderOrFooter(I)Z

    move-result v2

    goto :goto_0
.end method

.method public isItemChecked(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 1295
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListViewMz;->getExpandableListPosition(I)J

    move-result-wide v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1298
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isMultiChoiceEnable()Z
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Landroid/widget/ExpandableListViewMz;->mMultiChoiceEnable:Z

    return v0
.end method

.method public isPackedPositionChecked(J)Z
    .locals 2
    .parameter "packedPos"

    .prologue
    .line 1446
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2, v1}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1709
    instance-of v1, p1, Landroid/widget/ExpandableListViewMz$SavedState;

    if-nez v1, :cond_1

    .line 1710
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1720
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 1714
    check-cast v0, Landroid/widget/ExpandableListViewMz$SavedState;

    .line 1715
    .local v0, ss:Landroid/widget/ExpandableListViewMz$SavedState;
    invoke-virtual {v0}, Landroid/widget/ExpandableListViewMz$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1717
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/widget/ExpandableListViewMz$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1718
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    iget-object v2, v0, Landroid/widget/ExpandableListViewMz$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1702
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1703
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v2, Landroid/widget/ExpandableListViewMz$SavedState;

    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-direct {v2, v0, v1}, Landroid/widget/ExpandableListViewMz$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 8
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 570
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListViewMz;->isHeaderOrFooterPosition(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 572
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v4

    .line 604
    :cond_0
    :goto_0
    return v4

    .line 575
    :cond_1
    const/4 v1, 0x0

    .line 577
    .local v1, handled:Z
    iget v3, p0, Landroid/widget/ExpandableListViewMz;->mChoiceMode:I

    if-eqz v3, :cond_5

    .line 578
    iget v3, p0, Landroid/widget/ExpandableListViewMz;->mChoiceMode:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    iget v3, p0, Landroid/widget/ExpandableListViewMz;->mChoiceMode:I

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    iget v3, p0, Landroid/widget/ExpandableListViewMz;->mChoiceMode:I

    const/4 v5, 0x4

    if-eq v3, v5, :cond_2

    iget v3, p0, Landroid/widget/ExpandableListViewMz;->mChoiceMode:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_6

    :cond_2
    iget-object v3, p0, Landroid/widget/ExpandableListViewMz;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_6

    .line 581
    const/4 v1, 0x1

    .line 582
    iget-object v3, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p2}, Landroid/widget/ExpandableListViewMz;->getExpandableListPosition(I)J

    move-result-wide v5

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v5, v6, v7}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    move v2, v4

    .line 584
    .local v2, newValue:Z
    :cond_3
    invoke-virtual {p0, p2, v2}, Landroid/widget/ExpandableListViewMz;->setItemChecked(IZ)V

    .line 593
    .end local v2           #newValue:Z
    :cond_4
    :goto_1
    iput-boolean v4, p0, Landroid/widget/ExpandableListViewMz;->mDataChanged:Z

    .line 594
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->rememberSyncState()V

    .line 595
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->requestLayout()V

    .line 598
    :cond_5
    if-nez v1, :cond_0

    .line 603
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListViewMz;->getFlatPositionForConnector(I)I

    move-result v0

    .line 604
    .local v0, adjustedPosition:I
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/widget/ExpandableListViewMz;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v4

    goto :goto_0

    .line 585
    .end local v0           #adjustedPosition:I
    :cond_6
    iget v3, p0, Landroid/widget/ExpandableListViewMz;->mChoiceMode:I

    if-ne v3, v4, :cond_4

    .line 586
    const/4 v1, 0x1

    .line 587
    iget-object v3, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V

    .line 588
    iget-object v3, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p2}, Landroid/widget/ExpandableListViewMz;->getExpandableListPosition(I)J

    move-result-wide v5

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v5, v6, v7}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_7

    move v2, v4

    .line 590
    .restart local v2       #newValue:Z
    :cond_7
    invoke-virtual {p0, p2, v2}, Landroid/widget/ExpandableListViewMz;->setItemChecked(IZ)V

    goto :goto_1
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 1
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 564
    iput p2, p0, Landroid/widget/ExpandableListViewMz;->mLongPressPosition:I

    .line 565
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListViewMz;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 510
    iput-object p1, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 512
    if-eqz p1, :cond_0

    .line 514
    new-instance v0, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-direct {v0, p1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    .line 520
    :goto_0
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 521
    return-void

    .line 516
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 454
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "childDivider"

    .prologue
    .line 417
    iput-object p1, p0, Landroid/widget/ExpandableListViewMz;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 418
    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "childIndicator"

    .prologue
    .line 1182
    iput-object p1, p0, Landroid/widget/ExpandableListViewMz;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 1183
    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1197
    iput p1, p0, Landroid/widget/ExpandableListViewMz;->mChildIndicatorLeft:I

    .line 1198
    iput p2, p0, Landroid/widget/ExpandableListViewMz;->mChildIndicatorRight:I

    .line 1199
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 1
    .parameter "choiceMode"

    .prologue
    .line 1350
    invoke-super {p0, p1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1352
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1353
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    .line 1355
    :cond_0
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1356
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckedItemCount:I

    .line 1357
    return-void
.end method

.method public setGroupChecked(IZ)V
    .locals 5
    .parameter "groupPos"
    .parameter "checked"

    .prologue
    .line 1407
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v4, :cond_1

    .line 1417
    :cond_0
    return-void

    .line 1409
    :cond_1
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    .line 1411
    .local v0, childCnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1412
    invoke-static {p1, v1}, Landroid/widget/ExpandableListViewMz;->getPackedPositionForChild(II)J

    move-result-wide v2

    .line 1413
    .local v2, packedPos:J
    invoke-virtual {p0, v2, v3, p2}, Landroid/widget/ExpandableListViewMz;->setPackedPositionChecked(JZ)V

    .line 1411
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "groupIndicator"

    .prologue
    .line 1210
    iput-object p1, p0, Landroid/widget/ExpandableListViewMz;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 1211
    iget v0, p0, Landroid/widget/ExpandableListViewMz;->mIndicatorRight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1212
    iget v0, p0, Landroid/widget/ExpandableListViewMz;->mIndicatorLeft:I

    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/ExpandableListViewMz;->mIndicatorRight:I

    .line 1214
    :cond_0
    return-void
.end method

.method public setIndicatorBounds(II)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1228
    iput p1, p0, Landroid/widget/ExpandableListViewMz;->mIndicatorLeft:I

    .line 1229
    iput p2, p0, Landroid/widget/ExpandableListViewMz;->mIndicatorRight:I

    .line 1230
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 9
    .parameter "position"
    .parameter "value"

    .prologue
    .line 1303
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListViewMz;->getExpandableListPosition(I)J

    move-result-wide v6

    .line 1304
    .local v6, packedPos:J
    invoke-virtual {p0, v6, v7, p2}, Landroid/widget/ExpandableListViewMz;->setPackedPositionChecked(JZ)V

    .line 1308
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1310
    invoke-static {v6, v7}, Landroid/widget/ExpandableListViewMz;->getPackedPositionType(J)I

    move-result v8

    .line 1311
    .local v8, type:I
    if-nez v8, :cond_1

    .line 1312
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mGroupCheckListener:Landroid/widget/ExpandableListViewMz$onGroupCheckListener;

    if-eqz v0, :cond_0

    .line 1313
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mGroupCheckListener:Landroid/widget/ExpandableListViewMz$onGroupCheckListener;

    invoke-static {v6, v7}, Landroid/widget/ExpandableListViewMz;->getPackedPositionGroup(J)I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Landroid/widget/ExpandableListViewMz$onGroupCheckListener;->onGroupCheck(IIZ)V

    .line 1314
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getItemId(I)J

    move-result-wide v3

    .line 1317
    .local v3, id:J
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1333
    .end local v3           #id:J
    :cond_0
    :goto_0
    return-void

    .line 1321
    :cond_1
    const/4 v0, 0x1

    if-ne v0, v8, :cond_0

    .line 1322
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mChildCheckListener:Landroid/widget/ExpandableListViewMz$onChildCheckListener;

    if-eqz v0, :cond_0

    .line 1323
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mChildCheckListener:Landroid/widget/ExpandableListViewMz$onChildCheckListener;

    invoke-static {v6, v7}, Landroid/widget/ExpandableListViewMz;->getPackedPositionGroup(J)I

    move-result v1

    invoke-static {v6, v7}, Landroid/widget/ExpandableListViewMz;->getPackedPositionChild(J)I

    move-result v2

    invoke-interface {v0, p1, v1, v2, p2}, Landroid/widget/ExpandableListViewMz$onChildCheckListener;->onChildCheck(IIIZ)V

    .line 1325
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getItemId(I)J

    move-result-wide v3

    .line 1328
    .restart local v3       #id:J
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto :goto_0
.end method

.method public setMultiChoiceEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 398
    iput-boolean p1, p0, Landroid/widget/ExpandableListViewMz;->mMultiChoiceEnable:Z

    .line 399
    return-void
.end method

.method public setOnChildCheckListener(Landroid/widget/ExpandableListViewMz$onChildCheckListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1603
    iput-object p1, p0, Landroid/widget/ExpandableListViewMz;->mChildCheckListener:Landroid/widget/ExpandableListViewMz$onChildCheckListener;

    .line 1604
    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListViewMz$OnChildClickListener;)V
    .locals 0
    .parameter "onChildClickListener"

    .prologue
    .line 823
    iput-object p1, p0, Landroid/widget/ExpandableListViewMz;->mOnChildClickListener:Landroid/widget/ExpandableListViewMz$OnChildClickListener;

    .line 824
    return-void
.end method

.method public setOnGroupCheckListener(Landroid/widget/ExpandableListViewMz$onGroupCheckListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1599
    iput-object p1, p0, Landroid/widget/ExpandableListViewMz;->mGroupCheckListener:Landroid/widget/ExpandableListViewMz$onGroupCheckListener;

    .line 1600
    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListViewMz$OnGroupClickListener;)V
    .locals 0
    .parameter "onGroupClickListener"

    .prologue
    .line 796
    iput-object p1, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupClickListener:Landroid/widget/ExpandableListViewMz$OnGroupClickListener;

    .line 797
    return-void
.end method

.method public setOnGroupCollapseListener(Landroid/widget/ExpandableListViewMz$OnGroupCollapseListener;)V
    .locals 0
    .parameter "onGroupCollapseListener"

    .prologue
    .line 753
    iput-object p1, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupCollapseListener:Landroid/widget/ExpandableListViewMz$OnGroupCollapseListener;

    .line 754
    return-void
.end method

.method public setOnGroupExpandListener(Landroid/widget/ExpandableListViewMz$OnGroupExpandListener;)V
    .locals 0
    .parameter "onGroupExpandListener"

    .prologue
    .line 771
    iput-object p1, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupExpandListener:Landroid/widget/ExpandableListViewMz$OnGroupExpandListener;

    .line 772
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 501
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 502
    return-void
.end method

.method public setPackedPositionChecked(JZ)V
    .locals 6
    .parameter "packedPos"
    .parameter "checked"

    .prologue
    .line 1363
    const-wide v2, 0xffffffffL

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 1400
    :cond_0
    :goto_0
    return-void

    .line 1366
    :cond_1
    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_2

    .line 1367
    if-eqz p3, :cond_5

    .line 1368
    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1369
    iget v2, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckedItemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckedItemCount:I

    .line 1377
    :cond_2
    :goto_1
    iget v2, p0, Landroid/widget/ExpandableListViewMz;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    iget v2, p0, Landroid/widget/ExpandableListViewMz;->mChoiceMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    iget v2, p0, Landroid/widget/ExpandableListViewMz;->mChoiceMode:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    iget v2, p0, Landroid/widget/ExpandableListViewMz;->mChoiceMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 1380
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/widget/ExpandableListViewMz;->getUnpackListPosition(J)I

    move-result v0

    .line 1381
    .local v0, extractPosition:I
    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 1382
    .local v1, oldValue:Z
    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1384
    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1385
    if-eqz p3, :cond_6

    .line 1386
    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v3, v0}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getItemId(I)J

    move-result-wide v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1392
    :cond_4
    :goto_2
    if-eq v1, p3, :cond_0

    .line 1393
    if-eqz p3, :cond_7

    .line 1394
    iget v2, p0, Landroid/widget/ExpandableListViewMz;->mCheckedItemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/widget/ExpandableListViewMz;->mCheckedItemCount:I

    goto :goto_0

    .line 1371
    .end local v0           #extractPosition:I
    .end local v1           #oldValue:Z
    :cond_5
    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 1372
    iget v2, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckedItemCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckedItemCount:I

    goto :goto_1

    .line 1388
    .restart local v0       #extractPosition:I
    .restart local v1       #oldValue:Z
    :cond_6
    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v3, v0}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_2

    .line 1396
    :cond_7
    iget v2, p0, Landroid/widget/ExpandableListViewMz;->mCheckedItemCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/widget/ExpandableListViewMz;->mCheckedItemCount:I

    goto :goto_0
.end method

.method public setScrollActionOnGroupExpand(Landroid/widget/ExpandableListViewMz$scrollActionOnGroupExpand;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 1617
    iput-object p1, p0, Landroid/widget/ExpandableListViewMz;->mScrollActionOnGroupExpand:Landroid/widget/ExpandableListViewMz$scrollActionOnGroupExpand;

    .line 1618
    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 5
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "shouldExpandGroup"

    .prologue
    .line 1007
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainChildPosition(II)Landroid/widget/ExpandableListPosition;

    move-result-object v1

    .line 1009
    .local v1, elChildPos:Landroid/widget/ExpandableListPosition;
    iget-object v3, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1011
    .local v2, flatChildPos:Landroid/widget/ExpandableListConnector$PositionMetadata;
    if-nez v2, :cond_1

    .line 1015
    if-nez p3, :cond_0

    const/4 v3, 0x0

    .line 1033
    :goto_0
    return v3

    .line 1017
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListViewMz;->expandGroup(I)Z

    .line 1019
    iget-object v3, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1022
    if-nez v2, :cond_1

    .line 1023
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not find child"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1027
    :cond_1
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Landroid/widget/ExpandableListViewMz;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 1028
    .local v0, absoluteFlatPosition:I
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 1030
    invoke-virtual {v1}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 1031
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1033
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setSelectedGroup(I)V
    .locals 4
    .parameter "groupPosition"

    .prologue
    .line 986
    invoke-static {p1}, Landroid/widget/ExpandableListPosition;->obtainGroupPosition(I)Landroid/widget/ExpandableListPosition;

    move-result-object v1

    .line 988
    .local v1, elGroupPos:Landroid/widget/ExpandableListPosition;
    iget-object v3, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 989
    .local v2, pm:Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v1}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 990
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Landroid/widget/ExpandableListViewMz;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 991
    .local v0, absoluteFlatPosition:I
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 992
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 993
    return-void
.end method
