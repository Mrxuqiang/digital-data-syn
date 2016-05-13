/*
================================================================================
��ṹ����:TB_PUBQB
��ṹ����:��Ϣ�ձ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBQB;
drop index AK_TB_PUBQB;
drop table TB_PUBQB;
create table TB_PUBQB  (
   PUBQB_ID             INTEGER                              not null,  /*��Ϣ��ID             */
   PUBQB001             VARCHAR2(4)                          not null,  /*��Ϣ�ձ���           */
   PUBQB002             VARCHAR2(1)                          not null,  /*��Ϣ�շ�ʽ           */
   PUBQB003             NUMBER(2)                            not null,  /*��Ϣ����             */
   PUBQB004             VARCHAR2(1)                          not null,  /*���ڵ�λ             */
   PUBQB005             NUMBER(2)                            not null,  /*��ĩ�½�Ϣ��         */
   PUBQB006             VARCHAR2(1)                          not null,  /*����ʾ             */
   PUBQB007             VARCHAR2(255),                                  /*��ע                 */   
   CREATE_USER          VARCHAR2(12),                                   /*������Ա             */
   USER_GROUP           VARCHAR2(12),                                   /*������Ա����         */                               
   CREATE_DATE          DATE,                                           /*��������             */
   MODIFIER             VARCHAR2(12),                                   /*�޸���Ա             */
   MODI_DATE            DATE,                                           /*�޸�����             */
   FLAG                 NUMBER(1),                                      /*����״̬             */
   constraint PK_TB_PUBQB primary key (PUBQB_ID)
);
create unique index AK_TB_PUBQB on TB_PUBQB (PUBQB001);
create sequence SEQ_TB_PUBQB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBQB to public;
grant index  on TB_PUBQB to public;
grant update on TB_PUBQB to public; 
grant delete on TB_PUBQB to public;  
grant insert on TB_PUBQB to public; 
grant select on SEQ_TB_PUBQB to public;   