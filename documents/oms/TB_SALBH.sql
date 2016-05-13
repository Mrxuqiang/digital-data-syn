/*
20121030 add by gaoxl for 15512�����������Żݽ���ֶ�SALBH057
20130727 add by gaoxl for ������ add SALBH058~SALBH060
20130809 add by gaoxl for ��SALBH062~SALBH064
20130812 add by gaoxl for ��add SALBH069~SALBH075
*/
/*
================================================================================
��ṹ����:TB_SALBH
��ṹ����:���۵�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALBH;
drop index AK_TB_SALBH;
drop table TB_SALBH;
create table TB_SALBH  (
   SALBH_ID             INTEGER                         not null,  /*���۵�ID         */
   SALBH001             INTEGER                         not null,  /*����ID           */
   SALBH002             VARCHAR2(30)                    not null,  /*���۵���         */
   SALBH003             DATE                            not null,  /*��������         */
   SALBH004             INTEGER                         not null,  /*��˾ID           */
   SALBH005             INTEGER                         not null,  /*������֯ID       */
   SALBH006             INTEGER,                                   /*���۶���ID       */
   SALBH007             VARCHAR2(1)                     not null,  /*��������         */
   SALBH008             VARCHAR2(1),                               /*������Դ         */
   SALBH009             INTEGER,                                   /*����ƾ֤����ID   */
   SALBH010             NUMBER(12),                                /*����ƾ֤��       */
   SALBH011             INTEGER,                                   /*̯λID           */
   SALBH012             VARCHAR2(1),                               /*̯λ����         */
   SALBH013             INTEGER ,                                  /*���޺�ͬID       */
   SALBH014             INTEGER,                                   /*�����̻�ID       */
   SALBH015             INTEGER                         not null,  /*��Ʒ��ID         */
   SALBH016             INTEGER,                                   /*��ӪС��ID       */
   SALBH017             INTEGER                         not null,  /*�ͻ�ID           */
   SALBH018             INTEGER,                                   /*�ͻ���ͬ��ID     */
   SALBH019             VARCHAR2(1)                     not null,  /*���㷽ʽ         */
   SALBH020             VARCHAR2(1)                     not null,  /*�����ʽ         */
   SALBH021             DATE                            not null,  /*�������         */
   SALBH022             INTEGER                         not null,  /*�ͻ��ͻ�ID       */
   SALBH023             VARCHAR2(255),                             /*�ͻ���ַ         */
   SALBH024             VARCHAR2(30),                              /*�˿�����         */
   SALBH025             VARCHAR2(30),                              /*��ϵ�绰         */
   SALBH026             INTEGER,                                   /*����Ա           */
   SALBH027             INTEGER,                                   /*�ۿ���           */
   SALBH028             INTEGER,                                   /*֤������ID       */
   SALBH029             VARCHAR2(30),                              /*֤������(���׼ҵ���)         */
   SALBH030             NUMBER(30),                                /*��Ա����         */
   SALBH031             VARCHAR2(1),                               /*�Ƿ�μӴ���     */
   SALBH032             VARCHAR2(1),                               /*�Ƿ�ָ���ɹ�     */
   SALBH033             VARCHAR2(255),                             /*��ע             */
   SALBH034             VARCHAR2(25),                              /*����             */
   SALBH035             VARCHAR2(25),                              /*�������         */
   SALBH036             INTEGER,                                   /*¼����ID         */
   SALBH037             DATE,                                      /*¼������         */
   SALBH038             INTEGER,                                   /*�����ID         */
   SALBH039             DATE,                                      /*�������         */
   SALBH040             VARCHAR2(1)                     not null,  /*���״̬         */
   SALBH041             VARCHAR2(1),                               /*�Ƿ�ǩ��         */
   SALBH042             VARCHAR2(30),                              /*ǩ�˵���         */
   SALBH043             VARCHAR2(1),                               /*ǩ����           */
   SALBH044             VARCHAR2(1),                               /*���޴����㼶     */
   SALBH045             INTEGER,                                   /*Ӧ�յ�ID         */ 
   SALBH046             VARCHAR2(1),                               /*����״̬         */ --2010-01-27 ADD BY HANSF
   SALBH047             NUMBER(12,2) ,                             /*¥��             */  --2010-03-04 add by hansf
   SALBH048             VARCHAR2(1),                               /*�Ƿ��е���  0 ����û�У� 1��ʾ*/  
   SALBH049             VARCHAR2(30),                              /*�ֻ���һ         */	 
   SALBH050             VARCHAR2(30),                              /*�ֻ��Ŷ�         */	 
   SALBH051              INTEGER,                                  /*�ų�����         */        --2010-03-04 add by hansf
   SALBH052             NUMBER(12,2),                              /*�����ۺ���     */     --2010-03-12 add by hansf
   SALBH053             VARCHAR2(1)  	,                            /*���ۿ��         */--2010-03-04 add by hansf
   SALBH054             VARCHAR2(30),                              /*�̻�ƾ֤��(�������۵���ֵΪ9ʱ�����⽻��)       */--2010/3/15 add by ouwx
   SALBH055             VARCHAR2(200),                             /*���۱�ע         */
   SALBH056             NUMBER(22,2),                              /*�����ۿ���(%)�������ۿ��ʣ�    */ add by ouwx 2011/11/12
   SALBH057             NUMBER(22,2),                              /*�����Żݽ��     */  
   SALBH058             DATE,                                      /*�µ�����         */ 
   SALBH059             DATE,                                      /*��������         */ 
   SALBH060             DATE,                                      /*ʵ���ͻ�����     */ 
   SALBH061             VARCHAR2(1),                               /*�ѻط�           */
   SALBH062             VARCHAR2(1),                               /*�̻��ط�ȷ��      */ 
   SALBH063             VARCHAR2(1),                               /*�����ط�ȷ��      */ 
   SALBH064             VARCHAR2(1),                               /*�ͻ��ط�ȷ��      */
   SALBH065             VARCHAR2(30)                               /*С������*/            
   SALBH066             VARCHAR2(80),                              /*��������ʱ�� */ 
   SALBH067             VARCHAR2(80),                              /*������ã�Ԫ��   */  
   SALBH068             VARCHAR2(255),                             /*����             */
   SALBH069             VARCHAR2(1),                               /*�ֽ�             */
   SALBH070             VARCHAR2(1),                               /*���п�           */
   SALBH071             VARCHAR2(1),                               /*ͨ�㿨           */
   SALBH072             VARCHAR2(1),                               /*����;��         */
   SALBH073             VARCHAR2(1),                               /*���ڸ���         */
   SALBH074             VARCHAR2(1),                               /*֧Ʊ             */
   SALBH075             VARCHAR2(1),                               /*���� -֧����ʽ   */ 
   SALBH076             INTEGER,                                   /*��ӡ����         */
   SALBH077             INTEGER,                                   /*Ǳ��id           */
   SALBH078             VARCHAR2(1),                   not null,   /*��������    1:�̳Ƕ��� 2�����϶���   */--20140620 add by sundan
   SALBH079             DATE,                                      /*ԤԼ�ͻ�����     */
   SALBH080             NUMBER(22,2),                              /*���ۺϼƽ��     */ 
   SALBH081             NUMBER(22,2),                              /*��Ĩ����       */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER,                                    /*����״̬         */
   constraint PK_TB_SALBH primary key (SALBH_ID)
);
create unique index AK_TB_SALBH on TB_SALBH (SALBH002,SALBH005);
create sequence SEQ_TB_SALBH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALBH to public;
grant index  on TB_SALBH to public;
grant update on TB_SALBH to public; 
grant delete on TB_SALBH to public;  
grant insert on TB_SALBH to public; 
grant select on SEQ_TB_SALBH to public;   