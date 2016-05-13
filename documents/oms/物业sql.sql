merge into tb_pubif_temp tif
using (select pubcb003, /*Ӫ����֯ȫ��*/ /**/
              pubcb_id, /*Ӫ����֯ID*/
              pubcb001, /*Ӫ����֯����*/
              pubid003, /*¥������*/
              pubid004, /*¥������*/
              pubie004, /*¥�����*/
              pubie005, /*¥������*/
              pubig003, /*չλ���*/
              pubig004, /*չλ����*/
              pubig010, /*��ǰ״̬ 0,δ����,1,Ԥ����,2,����,3,ͣ��*/
              sum(supaa020) supaa020, /*�������*/
              sum(supaa009) supaa009, /*��Ӫ���*/
              hb.pubhb001, /*ϵ�б���*/
              hb.pubhb002, /*ϵ������*/
              hb1.pubhb001 as pubhb_brand001, /*Ʒ�Ʊ���*/
              hb1.pubhb002 as pubhb_brand002, /*Ʒ������*/
              ib.pubib001, /*��Ӫ�������*/
              ib.pubib002, /*��Ӫ��������*/
              ia.pubia001, /*��Ӫ�������*/
              ia.pubia002, /*��Ӫ��������*/
              case pubig010
                when '0' then
                 ''
                else
                 be.conbe063
              end conbe063, /*���ⷽ����������*/
              case pubig010
                when '0' then
                 ''
                else
                 be.conbe066
              end conbe066, /*���ⷽ��ϵ������*/
              case pubig010
                when '0' then
                 ''
                else
                 be.conbe068
              end conbe068, /*���ⷽ��ϵ�˵绰*/
              goo.pubgo001, /*�̻�����*/
              goo.pubgo003, /*�̻�����*/
              to_char(sysdate, 'yyyymmdd') ||
              lpad(row_number() over(partition by pubcb003, /*Ӫ����֯ȫ��*/ /**/
                        pubcb_id, /*Ӫ����֯ID*/
                        pubcb001, /*Ӫ����֯����*/
                        pubid003, /*¥������*/
                        pubid004, /*¥������*/
                        pubie004, /*¥�����*/
                        pubie005, /*¥������*/
                        pubig003, /*չλ���*/
                        pubig004, /*չλ����*/
                        pubig010, /*��ǰ״̬ 0,δ����,1,Ԥ����,2,����,3,ͣ��*/
                        --  supaa020, /*�������*/
                        --  supaa009, /*��Ӫ���*/
                        hb.pubhb001, /*ϵ�б���*/
                        hb.pubhb002, /*ϵ������*/
                        hb1.pubhb001, /*Ʒ�Ʊ���*/
                        hb1.pubhb002, /*Ʒ������*/
                        ib.pubib001, /*��Ӫ�������*/
                        ib.pubib002, /*��Ӫ��������*/
                        ia.pubia001, /*��Ӫ�������*/
                        ia.pubia002, /*��Ӫ��������*/
                        goo.pubgo001, /*�̻�����*/
                        goo.pubgo003 order by pubcb_id,
                        pubid003,
                        pubie004,
                        pubig003,
                        pubig004),
                   5,
                   '0') batchnum
         from (select cb.pubcb003, /*Ӫ����֯ȫ��*/ /**/
                      cb.pubcb_id, /*Ӫ����֯ID*/
                      cb.pubcb001, /*Ӫ����֯����*/
                      idd.pubid003, /*¥������*/
                      idd.pubid004, /*¥������*/
                      ie.pubie004, /*¥�����*/
                      ie.pubie005, /*¥������*/
                      ig.pubig003, /*չλ���*/
                      ig.pubig004, /*չλ����*/
                      ig.pubig010, /*��ǰ״̬ 0,δ����,1,Ԥ����,2,����,3,ͣ��*/
                      aa.supaa020, /*�������*/
                      aa.supaa009, /*��Ӫ���*/
                      max(be.conbe_id) conbe_id
                 from tb_pubig ig
                 left join tb_pubcb cb
                   on ig.pubig002 = cb.pubcb_id
                 left join tb_supab ab
                   on ig.pubig_id = ab.supab004
                 left join tb_pubid idd
                   on ab.supab012 = idd.pubid_id
                 left join tb_pubie ie
                   on ab.supab013 = ie.pubie_id
                 left join tb_supac ac
                   on ab.supab_id = ac.supac001
                 left join tb_pubif iff
                   on ac.supac002 = iff.pubif_id
                 left join tb_supaa aa
                   on iff.pubif_id = aa.supaa004
                 left join tb_conbe be
                   on ig.pubig_id = be.conbe010
                where /*(trunc(ig.create_date) = trunc(sysdate) or
                      trunc(ig.modi_date) = trunc(sysdate))
                  and*/ ig.pubig010 in ('0', '2')
                  and cb.pubcb003 is not null
                  and cb.pubcb_id is not null
                  and cb.pubcb001 is not null
                  and idd.pubid003 is not null
                  and idd.pubid004 is not null
                  and ie.pubie004 is not null
                  and ie.pubie005 is not null
                  and ig.pubig003 is not null
                  and ig.pubig004 is not null
                  and aa.supaa015 = 'Y'
                     -- and be.conbe025 = 'Y'
                  and trunc(sysdate) between aa.supaa006 and aa.supaa019
                  and cb.pubcb_id = 135
               -- and rownum <=20
                group by cb.pubcb003, /*Ӫ����֯ȫ��*/ /**/
                         cb.pubcb_id, /*Ӫ����֯ID*/
                         cb.pubcb001, /*Ӫ����֯����*/
                         idd.pubid003, /*¥������*/
                         idd.pubid004, /*¥������*/
                         ie.pubie004, /*¥�����*/
                         ie.pubie005, /*¥������*/
                         ig.pubig003, /*չλ���*/
                         ig.pubig004, /*չλ����*/
                         ig.pubig010,
                         aa.supaa020, /*�������*/
                         aa.supaa009) aa
         left join tb_conbe be
           on aa.conbe_id = be.conbe_id
         left join tb_conbs bs
           on be.conbe_id = bs.conbs001
         left join tb_pubhb hb
           on bs.conbs002 = hb.pubhb_id
         left join tb_pubhb_brand hb1
           on hb1.pubhb_id = hb.pubhb004
         left join tb_pubib ib
           on be.conbe039 = ib.pubib_id
         left join tb_pubia ia
           on ib.pubib003 = ia.pubia_id
         left join tb_pubgo goo
           on be.conbe008 = goo.pubgo_id
        where hb.pubhb001 is not null
        group by pubcb003, /*Ӫ����֯ȫ��*/ /**/
                 pubcb_id, /*Ӫ����֯ID*/
                 pubcb001, /*Ӫ����֯����*/
                 pubid003, /*¥������*/
                 pubid004, /*¥������*/
                 pubie004, /*¥�����*/
                 pubie005, /*¥������*/
                 pubig003, /*չλ���*/
                 pubig004, /*չλ����*/
                 pubig010, /*��ǰ״̬ 0,δ����,1,Ԥ����,2,����,3,ͣ��*/
                 -- supaa020, /*�������*/
                 -- supaa009, /*��Ӫ���*/
                 hb.pubhb001, /*ϵ�б���*/
                 hb.pubhb002, /*ϵ������*/
                 hb1.pubhb001, /*Ʒ�Ʊ���*/
                 hb1.pubhb002, /*Ʒ������*/
                 ib.pubib001, /*��Ӫ�������*/
                 ib.pubib002, /*��Ӫ��������*/
                 ia.pubia001, /*��Ӫ�������*/
                 ia.pubia002, /*��Ӫ��������*/
                 goo.pubgo001, /*�̻�����*/
                 goo.pubgo003,
                 be.conbe063,
                 be.conbe066,
                 be.conbe068
        order by pubcb_id, pubid003, pubie004, pubig003, pubig004) temp
on (tif.pubcb_id = temp.pubcb_id and tif.pubid003 = temp.pubid003 and tif.pubie004 = temp.pubie004 and tif.pubig003 = temp.pubig003)
when matched then
  update
     set tif.pubig004       = temp.pubig004,
         tif.pubig010       = temp.pubig010,
         tif.supaa020       = temp.supaa020,
         tif.supaa009       = temp.supaa009,
         tif.pubhb001       = temp.pubhb001,
         tif.pubhb002       = temp.pubhb002,
         tif.pubhb_brand001 = temp.pubhb_brand001,
         tif.pubhb_brand002 = temp.pubhb_brand002,
         tif.pubib001       = temp.pubib001,
         tif.pubib002       = temp.pubib002,
         tif.pubia002       = temp.pubia002,
         tif.conbe063       = temp.conbe063,
         tif.conbe066       = temp.conbe066,
         tif.conbe068       = temp.conbe068,
         tif.pubgo001       = temp.pubgo001,
         tif.pubgo003       = temp.pubgo003,
         tif.batchnum       = temp.batchnum
when not matched then
  insert
    (tif.pubcb003,
     tif.pubcb_id,
     tif.pubcb001,
     tif.pubid003,
     tif.pubid004,
     tif.pubie004,
     tif.pubie005,
     tif.pubig003,
     tif.pubig004,
     tif.pubig010,
     tif.supaa020,
     tif.supaa009,
     tif.pubhb001,
     tif.pubhb002,
     tif.pubhb_brand001,
     tif.pubhb_brand002,
     tif.pubib001,
     tif.pubib002,
     tif.pubia001,
     tif.pubia002,
     tif.conbe063,
     tif.conbe066,
     tif.conbe068,
     tif.pubgo001,
     tif.pubgo003,
     tif.batchnum)
  values
    (temp.pubcb003,
     temp.pubcb_id,
     temp.pubcb001,
     temp.pubid003,
     temp.pubid004,
     temp.pubie004,
     temp.pubie005,
     temp.pubig003,
     temp.pubig004,
     temp.pubig010,
     temp.supaa020,
     temp.supaa009,
     temp.pubhb001,
     temp.pubhb002,
     temp.pubhb_brand001,
     temp.pubhb_brand002,
     temp.pubib001,
     temp.pubib002,
     temp.pubia001,
     temp.pubia002,
     temp.conbe063,
     temp.conbe066,
     temp.conbe068,
     temp.pubgo001,
     temp.pubgo003,
     temp.batchnum)
