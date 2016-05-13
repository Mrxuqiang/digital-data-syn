/*
================================================================================
��ṹ����:TB_BILCB
��ṹ����:���õ������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILCB;
drop index AK_TB_BILCB;
drop table TB_BILCB;
create table TB_BILCB  (
   BILCB_ID             INTEGER                         not null,  /*���õ�������ϸID     */
   BILCB001             INTEGER                         not null,  /*���õ�����ID         */
   BILCB002             INTEGER                         not null,  /*���õ�ID             */
   BILCB003             INTEGER                         not null,  /*���õ���ϸID         */
   BILCB004             INTEGER                         not null,  /*����ID               */
   BILCB005             VARCHAR2(1)                     not null,  /*��������             */
   BILCB006             INTEGER,                                   /*��ƿ�ĿID           */
   BILCB007             NUMBER(12,2)                    not null,  /*����δ�ս��         */
   BILCB008             NUMBER(12,2)                    not null,  /*�������             */
   BILCB009             NUMBER(12,2)                    not null,  /*������δ�ս��       */
   BILCB010             VARCHAR2(255),                             /*��ע                 */
   BILCB011             INTEGER,                                   /*����ԭ��ID           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_BILCB primary key (BILCB_ID)
);
create unique index AK_TB_BILCB on TB_BILCB (BILCB001,BILCB002,BILCB003);
create sequence SEQ_TB_BILCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILCB to public;
grant index  on TB_BILCB to public;
grant update on TB_BILCB to public; 
grant delete on TB_BILCB to public;  
grant insert on TB_BILCB to public; 
grant select on SEQ_TB_BILCB to public;   