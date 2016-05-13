/*
================================================================================
��ṹ����:TB_RECAE
��ṹ����:�տ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_RECAE;
drop index AK_TB_RECAE;
drop table TB_RECAE;
create table TB_RECAE  (
   RECAE_ID             INTEGER                         not null,  /*�տ����ID                 */
   RECAE001             VARCHAR2(1)                     not null,  /*����                       */
   RECAE002             INTEGER                         not null,  /*����ID                       */
   RECAE003             VARCHAR2(30)                    not null,  /*�տ��                   */
   RECAE004             DATE                            not null,  /*�տ�����                   */
   RECAE005             INTEGER                         not null,  /*�ͻ�                       */
   RECAE006             INTEGER                         not null,  /*�տ�ͻ�                   */
   RECAE007             INTEGER,                                   /*����                       */
   RECAE008             INTEGER,                                   /*��Ա                       */
   RECAE009             VARCHAR2(1)                     not null,  /*����״̬                   */
   RECAE010             INTEGER,                                   /*¼����                     */
   RECAE011             DATE,                                      /*¼������                   */
   RECAE012             INTEGER,                                   /*�����                     */
   RECAE013             DATE,                                      /*�������                   */
   RECAE014             NUMBER(16,2) ,                             /*ԭ���տ�ϼ�               */
   RECAE015             NUMBER(16,2),                              /*�����տ�ϼ�               */
   RECAE016             NUMBER(16,2) ,                             /*ԭ�Һ������               */
   RECAE017             NUMBER(16,2),                              /*���Һ������               */
   RECAE018             VARCHAR2(1)                     not null,  /*����״̬                   */
   RECAE019             VARCHAR2(1)                     not null,  /*��Դ                       */
   RECAE020             INTEGER,                                   /*���۶�����                       */
   RECAE021             VARCHAR2(1)                     not null,  /*����ƾ֤                     */
   RECAE022             INTEGER                         not null,  /*����ID                     */
   RECAE023             NUMBER(5,4),                               /*����                     */
   RECAE024             NUMBER(4),                                 /*������                     */  
   RECAE025             NUMBER(4),                                 /*����ڼ�                     */   
   CREATE_USER          VARCHAR2(12),                              /*������Ա                   */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����               */                               
   CREATE_DATE          DATE,                                      /*��������                   */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                   */
   MODI_DATE            DATE,                                      /*�޸�����                   */
   FLAG                 NUMBER(1),                                 /*����״̬                   */
   constraint PK_TB_RECAE primary key (RECAE_ID)
);
create unique index AK_TB_RECAE on TB_RECAE (RECAE002,RECAE003);
create sequence SEQ_TB_RECAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAE to public;
grant index  on TB_RECAE to public;
grant update on TB_RECAE to public; 
grant delete on TB_RECAE to public;  
grant insert on TB_RECAE to public; 
grant select on SEQ_TB_RECAE to public;   