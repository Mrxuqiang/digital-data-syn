/*
================================================================================
��ṹ����:TB_MEDCB
��ṹ����:ý�����ͬ��ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEDCB;
drop index AK_TB_MEDCB;
drop table TB_MEDCB;
create table TB_MEDCB  (
   MEDCB_ID             INTEGER                         not null,  /*ý�����ͬ��ϸID   */
   MEDCB001             INTEGER                         not null,  /*ý�����ͬID       */
   MEDCB002             INTEGER                         not null,  /*ý��ID               */
   MEDCB003             VARCHAR2(1)                     not null,  /*����                 */
   MEDCB004             INTEGER                         not null,  /*��ĿID 1.��Ŀ 2.�ز� */
   MEDCB005             VARCHAR2(8),				   /*��ʼʱ��             */
   MEDCB006             VARCHAR2(8),				   /*����ʱ��             */
   MEDCB007             INTEGER,				   /*��λID               */
   MEDCB008             NUMBER(12,2),				   /*����                 */
   MEDCB009             NUMBER(12),				   /*����                 */
   MEDCB010             VARCHAR2(60),				   /*����                 */
   MEDCB011             NUMBER(12,2),				   /*�ۿ۽��             */
   MEDCB012             NUMBER(12,2)                    not null,  /*���                 */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_MEDCB primary key (MEDCB_ID)
);
create unique index AK_TB_MEDCB on TB_MEDCB (MEDCB001,MEDCB002,MEDCB003,MEDCB004,MEDCB005);
create sequence SEQ_TB_MEDCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDCB to public;
grant index  on TB_MEDCB to public;
grant update on TB_MEDCB to public; 
grant delete on TB_MEDCB to public;  
grant insert on TB_MEDCB to public; 
grant select on SEQ_TB_MEDCB to public;   