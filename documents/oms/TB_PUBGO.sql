���Ľ� 13:58:03
  /*
================================================================================
��ṹ����:TB_PUBGO
��ṹ����:��������
��ṹĿ��:
================================================================================
*/updateCharge

drop sequence SEQ_TB_PUBGO;
drop index AK_TB_PUBGO;
drop table TB_PUBGO;
create table TB_PUBGO  (
   PUBGO_ID             INTEGER                         not null,  /*����ID             */
   PUBGO001             VARCHAR2(10)                    not null,  /*���̺�             */
   PUBGO002             NUMBER(3)                       not null,  /*�汾��             */
   PUBGO003             VARCHAR2(40)                    not null,  /*���̼��           */
   PUBGO004             VARCHAR2(80)                    not null,  /*����ȫ��           */
   PUBGO005             VARCHAR2(1),                               /*�Ƿ��̻�           */ 
   PUBGO006             VARCHAR2(1),                               /*�Ƿ�Ӧ��         */ 
   PUBGO007             VARCHAR2(1),                               /*�Ƿ�ͻ�           */ 
   PUBGO008             INTEGER,                                   /*���ϴ����֯ID     */ 
   PUBGO009             INTEGER                         not null,  /*���̷���ID         */
   PUBGO010             INTEGER,                                   /*��ҵ����ID         */ 
   PUBGO011             VARCHAR2(255),                             /*��Ӫ��Χ           */ 
   PUBGO012             VARCHAR2(30),                              /*���˴���           */ 
   PUBGO013             VARCHAR2(30),                              /*���˵绰           */ 
   PUBGO014             VARCHAR2(30),                              /*�ܾ���             */ 
   PUBGO015             VARCHAR2(30),                              /*�ܾ���绰         */ 
   PUBGO016             VARCHAR2(30),                              /*��Ӫ��             */ 
   PUBGO017             VARCHAR2(30),                              /*��Ӫ�˵绰         */ 
   PUBGO018             VARCHAR2(30),                              /*Ӫ��������         */ 
   PUBGO019             VARCHAR2(60),                              /*Ӫ��E_Mail         */ 
   PUBGO020             VARCHAR2(60),                              /*��˾��ַ           */ 
   PUBGO021             INTEGER,                                   /*˰��ID             */ 
   PUBGO022             VARCHAR2(20),                              /*��˰�˵ǼǺ�       */ 
   PUBGO023             NUMBER(12,2),                              /*ע���ʽ�           */ 
   PUBGO024             VARCHAR2(30),                              /*����               */ 
   PUBGO025             INTEGER,                                   /*��Ӫ��̬ID         */  
   PUBGO026             VARCHAR2(10),                              /*��Ʊ�ʱ�           */ 
   PUBGO027             VARCHAR2(255),                             /*��Ʊ��ַ           */ 
   PUBGO028             VARCHAR2(10),                              /*��������           */ 
   PUBGO029             VARCHAR2(255),                             /*��˾��ַ           */ 
   PUBGO030             VARCHAR2(10),                              /*�ʼ��ʱ�           */ 
   PUBGO031             VARCHAR2(255),                             /*�ʼĵ�ַ           */ 
   PUBGO032             INTEGER,                                   /*¼����             */ 
   PUBGO033             DATE,                                      /*¼������           */ 
   PUBGO034             INTEGER,                                   /*�����             */ 
   PUBGO035             DATE,                                      /*�������           */ 
   PUBGO036             VARCHAR2(1)                     not null,  /*���״̬           */
   PUBGO037             VARCHAR2(1),                               /*��Ӫ��ʽ           */
   PUBGO038             VARCHAR2(30),                              /*�����˵绰         */ 
   PUBGO039             VARCHAR2(1)                     not null,  /*�ʱ����ɷ�ʽ1.��С�� 2.����߶� 3.����׼  */
   PUBGO040             INTEGER                         not null,  /*�ɹ�Ա             */ 
   PUBGO041             INTEGER                                    /*�ܹ�˾             */ 
   PUBGO042             INTEGER                                    /*����ģ��           */ 
   PUBGO043             VARCHAR2(255),                             /*��ʷ�ظ�           */ 
   PUBGO044             VARCHAR2(255),                             /*�ش��¼�           */ 
   PUBGO045             VARCHAR2(255),                             /*�������           */ 
   PUBGO046             VARCHAR2(255),                             /*����״��������     */ 
   PUBGO047             VARCHAR2(255),                             /*���߼�¼           */ 
   PUBGO048             VARCHAR2(255),                             /*�������Ƿ״��     */ 
   PUBGO049             VARCHAR2(255),                             /*������Ѻ��¼       */ 
   PUBGO050             VARCHAR2(255),                             /*ͬҵ����           */ 
   PUBGO051             VARCHAR2(255),                             /*�������󱨸�       */ 
   PUBGO052            NUMBER(12,0),				   /*Ĭ�Ϲ�������       */ 
   PUBGO053             NUMBER(12,0),				   /*�ض���������       */ 
   PUBGO054            VARCHAR2(30),				   /*��ϵ��1 ����	*/ 
   PUBGO055           VARCHAR2(30),				   /*��ϵ��1-�绰	*/
   PUBGO056            VARCHAR2(30),				   /*��ϵ��1-�ֻ�	*/
   PUBGO057            VARCHAR2(30),				   /*��ϵ��1-email	*/
   PUBGO058            VARCHAR2(30),				   /*��ϵ��1-ְλ	*/
   PUBGO059            VARCHAR2(30),				   /*��ϵ��2 ����	*/ 
   PUBGO060            VARCHAR2(30),				   /*��ϵ��2-�绰	*/
   PUBGO061            VARCHAR2(30),				   /*��ϵ��2-�ֻ�	*/
   PUBGO062            VARCHAR2(30),				   /*��ϵ��2-email	*/
   PUBGO063            VARCHAR2(30),				   /*��ϵ��2-ְλ	*/
   PUBGO064            VARCHAR2(30),				   /*��ϵ��3 ����	*/ 
   PUBGO065           VARCHAR2(30),				   /*��ϵ��3-�绰	*/
   PUBGO066            VARCHAR2(30),				   /*��ϵ��3-�ֻ�	*/
   PUBGO067           VARCHAR2(30),				   /*��ϵ��3-email      */
   PUBGO068            VARCHAR2(30),				   /*��ϵ��3-ְλ	*/
   PUBGO069            NUMBER(22,6),				   /*�������		*/   
   PUBGO071            VARCHAR2(1),				   /*�Ƿ�����		*/ 
   PUBGO072            INTEGER,				           /*¥��ID		*/ 
   PUBGO073            INTEGER,				           /*¥��ID		*/  
   PUBGO074            VARCHAR2(1),				   /*�Ƿ񹫿�		*/ --20110523 add by xiechun
   PUBGO075            INTEGER,				           /*���㷽ʽ		*/ --20110715 add by xiechun
   PUBGO076            VARCHAR2(20),				   /*POS���̻�����      */ --20111026 add by gaoxl
   PUBGO077            VARCHAR2(60),				   /*POS���̻�����      */ --20111026 add by gaoxl
   PUBGO078            INTEGER,				           /*���ױ���ID		*/ --20120401 add by xiechun
   PUBGO079            VARCHAR2(1),                                /*�Ƿ������ͻ�       */ --20120727 add by xiechun
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_PUBGO primary key (PUBGO_ID)
);
create unique index AK_TB_PUBGO on TB_PUBGO (PUBGO001);
create sequence SEQ_TB_PUBGO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGO to public;
grant index  on TB_PUBGO to public;
grant update on TB_PUBGO to public; 
grant delete on TB_PUBGO to public;  
grant insert on TB_PUBGO to public; 
grant select on SEQ_TB_PUBGO to public;   
