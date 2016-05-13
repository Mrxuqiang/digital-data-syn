/*
================================================================================
��ṹ����:TB_CONHB
��ṹ����:Ʒ������Э��������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONHB;
drop index AK_TB_CONHB;
drop table TB_CONHB;
create table TB_CONHB  (
   CONHB_ID             INTEGER                         not null,  /*Э��������ӱ�ID    */
   CONHB001             INTEGER                         not null,  /*Э�������ID        */
   CONHB002             INTEGER                         not null,  /*��ƷID              */
   CONHB003             INTEGER,                                   /*��С�ɹ���λID      */
   CONHB004             NUMBER(12,2),                              /*(ԭ)��˰�ɹ���      */
   CONHB005             NUMBER(12,2),                              /*��˰�ɹ���          */
   CONHB006             NUMBER(12,2),                              /*(ԭ)��Ͳɹ���      */
   CONHB007             NUMBER(12,2),                              /*��Ͳɹ���          */
   CONHB008             NUMBER(12,2),                              /*(ԭ)�ɹ�����        */
   CONHB009             NUMBER(12,2),                              /*�ɹ�����            */
   CONHB010             NUMBER(12,2),                              /*(ԭ)�ɹ�����        */
   CONHB011             NUMBER(12,2),                              /*�ɹ�����            */
   CONHB012             NUMBER(12,2),                              /*(ԭ)�ۿ���(%)       */
   CONHB013             NUMBER(12,2),                              /*�ۿ���(%)           */
   CONHB014             NUMBER(12,2),                              /*(ԭ)������          */
   CONHB015             NUMBER(12,2),                              /*������              */
   CONHB016             NUMBER(5),                                 /*(ԭ)Ĭ�Ϲ�������    */
   CONHB017             NUMBER(5),                                 /*Ĭ�Ϲ�������        */
   CONHB018             NUMBER(12,2),                              /*(ԭ)�������(%)     */
   CONHB019             NUMBER(12,2),                              /*�������(%)         */
   CONGB020             INTEGER,                                   /*(ԭ)˰��            */  modi by 20091020
   CONGB021             NUMBER(12,2),                              /*(ԭ)˰��            */  modi by 20091020
   CONGB022             INTEGER,                                   /*˰��                */  modi by 20091020
   CONGB023             NUMBER(12,2),                              /*˰��                */  modi by 20091020
   CONGB024             NUMBER(12,2),                              /*(ԭ)˰ǰ����        */  modi by 20091020 
   CONGB025             NUMBER(12,2),                              /*˰ǰ����            */  modi by 20091020   
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONHB primary key (CONHB_ID)
);
create unique index AK_TB_CONHB on TB_CONHB (CONHB001,CONHB002);
create sequence SEQ_TB_CONHB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONHB to public;
grant index  on TB_CONHB to public;
grant update on TB_CONHB to public; 
grant delete on TB_CONHB to public;  
grant insert on TB_CONHB to public; 
grant select on SEQ_TB_CONHB to public;   